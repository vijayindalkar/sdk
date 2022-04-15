// Copyright (c) 2022, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:analysis_server/protocol/protocol_generated.dart';
import 'package:analysis_server/src/handler/legacy/legacy_handler.dart';

/// The handler for the `analytics.isEnabled` request.
class AnalyticsIsEnabledHandler extends LegacyHandler {
  /// Initialize a newly created handler to be able to service requests for the
  /// [server].
  AnalyticsIsEnabledHandler(
      super.server, super.request, super.cancellationToken);

  @override
  Future<void> handle() async {
    sendResult(AnalyticsIsEnabledResult(server.analytics?.enabled ?? false));
  }
}
