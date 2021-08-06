// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import "package:kernel/kernel.dart";
import "package:expect/expect.dart";
import "package:expect/minitest.dart";
import "../dart_html_metrics_visitor.dart";
import "package:cli_util/cli_util.dart";
import "package:path/path.dart" as path;
import "dart:io";

main() async {
  // Compile Dill
  var sdkPath = getSdkPath();
  if (!sdkPath.contains("ReleaseX64")) sdkPath = path.join(sdkPath, "ReleaseX64", "dart-sdk");
  var scriptPath = Platform.script.path;
  var pkgPath = path.dirname(
      path.dirname(path.dirname(path.dirname(path.dirname(scriptPath)))));
  var compilePath = path.canonicalize(
      path.join(pkgPath, "front_end", "tool", "_fasta", "compile.dart"));
  var testClassesPath = path
      .canonicalize(path.join(path.dirname(scriptPath), "test_classes.dart"));
  var ddcOutlinePath =
      path.canonicalize(path.join(sdkPath, "lib", "_internal", "ddc_sdk.dill"));
  var dillPath = path
      .canonicalize(path.join(path.dirname(scriptPath), "test_classes.dill"));

  await Process.run(path.join(sdkPath, "bin", "dart"), [
    compilePath,
    "--target=dartdevc",
    "--platform=${ddcOutlinePath}",
    "-o=${dillPath}",
    testClassesPath
  ]);

  // Dill compiled from test_classes.dart using ddc.
  var component = loadComponentFromBinary(dillPath);
  var visitor = MetricsVisitor(["file:${testClassesPath}"]);

  component.accept(visitor);

  test("Class A does not call super", () {
    Expect.equals(visitor.classInfo["A"].invokesSuper, false);
  });

  test("Class B does call super", () {
    Expect.equals(visitor.classInfo["B"].invokesSuper, true);

    var callingMethod = visitor.classInfo["B"].methods
        .where((m) => m.name == "testSuper")
        .toList()[0];
    Expect.equals(callingMethod.invokesSuper, true);
  });

  test("Class C does not call super", () {
    Expect.equals(visitor.classInfo["C"].invokesSuper, false);
  });

  test("Class A inherited by B", () {
    Expect.equals(visitor.classInfo["A"].inheritedBy.contains("B"), true);
    Expect.equals(visitor.classInfo["B"].parent, "A");
  });

  test("Class B inherited by C", () {
    Expect.equals(visitor.classInfo["B"].inheritedBy.contains("C"), true);
    Expect.equals(visitor.classInfo["C"].parent, "B");
  });

  test("Class B inherited by F", () {
    Expect.equals(visitor.classInfo["B"].inheritedBy.contains("F"), true);
    Expect.equals(visitor.classInfo["F"].parent, "B");
  });

  test("Class C inherited by nothing", () {
    Expect.equals(visitor.classInfo["C"].inheritedBy.length, 0);
  });

  test("Class D mixed with Mix1 and Mix2", () {
    Expect.equals(visitor.classInfo["D"].mixed, true);
    Expect.deepEquals(visitor.classInfo["D"].mixins, ["Mix1", "Mix2"]);
  });

  test("Class F mixed with Mix1 and Mix2", () {
    Expect.equals(visitor.classInfo["F"].mixed, true);
    Expect.deepEquals(visitor.classInfo["F"].mixins, ["Mix1", "Mix2"]);
  });
}
