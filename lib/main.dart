import 'dart:async';
import 'dart:developer';

import 'package:coloring_app/screens/coloring_screen.dart';
import 'package:flutter/material.dart';

// TODO(macegora): math painted lines with template, to check on correct?

void main() {
  unawaited(
    runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        runApp(const MyApp());
      },
      (Object error, StackTrace stack) {
        log(error.toString());
      },
    ),
  );
}

/// my app widget
class MyApp extends StatelessWidget {
  /// my app widget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: const ColoringScreen(),
    );
  }
}
