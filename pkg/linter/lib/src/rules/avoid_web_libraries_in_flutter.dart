// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/file_system/file_system.dart';
import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import '../analyzer.dart';
import '../ast.dart';

const _desc =
    r'Avoid using web-only libraries outside Flutter web plugin packages.';

const _details = r'''
**AVOID** using web libraries or web-only packages in
Flutter packages that are not web plugins.

Web libraries are not supported outside a web context; functionality that
depends on them will fail at runtime on non-web platforms, and
their use is generally discouraged in Flutter web apps.

This lint flags any import of the following libraries and packages:

- `dart:html`
- `dart:js`
- `dart:js_util`
- `dart:js_interop`
- `dart:js_interop_unsafe`
- `package:js`
- `package:web`

Web library usage is allowed in Flutter plugins that
[explicitly declare](https://docs.flutter.dev/packages-and-plugins/developing-packages#plugin-platforms)
the `web` platform as supported in their `pubspec.yaml` file.
''';

// TODO(pq): consider making a utility and sharing w/ `prefer_relative_imports`
YamlMap _parseYaml(String content) {
  try {
    var doc = loadYamlNode(content);
    if (doc is YamlMap) {
      return doc;
    }
    // ignore: avoid_catches_without_on_clauses
  } catch (_) {
    // Fall-through.
  }
  return YamlMap();
}

class AvoidWebLibrariesInFlutter extends LintRule {
  static const LintCode code = LintCode('avoid_web_libraries_in_flutter',
      "Don't use web-only libraries outside Flutter web plugin packages.",
      correctionMessage: 'Try finding a different library for your needs.');

  /// Cache of most recent analysis root to parsed "hasFlutter" state.
  static final Map<String, bool> _rootHasFlutterCache = {};

  AvoidWebLibrariesInFlutter()
      : super(
            name: 'avoid_web_libraries_in_flutter',
            description: _desc,
            details: _details,
            group: Group.errors);

  @override
  LintCode get lintCode => code;

  bool hasFlutterDep(File? pubspec) {
    if (pubspec == null) {
      return false;
    }

    YamlMap parsedPubspec;
    try {
      var content = pubspec.readAsStringSync();
      parsedPubspec = _parseYaml(content);
      // ignore: avoid_catches_without_on_clauses
    } catch (_) {
      return false;
    }

    // If it has Flutter as a dependency, continue checking.
    if (parsedPubspec['dependencies'] case {'flutter': var _?}) {
      if (parsedPubspec['flutter']
          case {'plugin': {'platforms': {'web': _?}}}) {
        // Is a Flutter web plugin; allow web libraries.
        return false;
      } else {
        // Is a non-web Flutter package; don't allow web libraries.
        return true;
      }
    }

    // Is not a Flutter package; allow web libraries.
    return false;
  }

  @override
  void registerNodeProcessors(
      NodeLintRegistry registry, LinterContext context) {
    bool hasFlutter(String root) {
      var hasFlutter = _rootHasFlutterCache[root];
      if (hasFlutter == null) {
        // Clear the previous cache.
        clearCache();
        var pubspecFile = locatePubspecFile(context.currentUnit.unit);
        hasFlutter = hasFlutterDep(pubspecFile);
        _rootHasFlutterCache[root] = hasFlutter;
      }
      return hasFlutter;
    }

    var root = context.package?.root;
    if (root != null) {
      if (hasFlutter(root)) {
        var visitor = _Visitor(this);
        registry.addImportDirective(this, visitor);
      }
    }
  }

  @visibleForTesting
  static void clearCache() => _rootHasFlutterCache.clear();
}

class _Visitor extends SimpleAstVisitor<void> {
  static const Set<String> _webUris = {
    'dart:html',
    'dart:js',
    'dart:js_util',
    'dart:js_interop',
    'dart:js_interop_unsafe',
    'package:js',
    'package:web',
  };

  final LintRule rule;

  _Visitor(this.rule);

  bool isWebUri(String uri) => _webUris.contains(uri.split('/')[0]);

  @override
  void visitImportDirective(ImportDirective node) {
    var uriString = node.uri.stringValue;
    if (uriString != null && isWebUri(uriString)) {
      rule.reportLint(node);
    }
  }
}
