import 'dart:async';
import 'dart:developer';

import 'package:coloring_app/app.dart';
import 'package:coloring_app/config/flavors/flavors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        runApp(
          const ProviderScope(
            child: MyApp(
              flavor: AppFlavor.stage,
            ),
          ),
        );
      },
      (Object error, StackTrace stack) {
        log(error.toString());
      },
    ),
  );
}
