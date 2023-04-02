import 'dart:async';
import 'dart:developer';

import 'package:coloring_app/generated/l10n.dart';
import 'package:coloring_app/screens/coloring_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: const ColoringScreen(),
    );
  }
}
