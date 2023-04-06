// ignore_for_file: lines_longer_than_80_chars

import 'package:coloring_app/config/flavors/flavor_banner.dart';
import 'package:coloring_app/config/flavors/flavors.dart';
import 'package:coloring_app/generated/l10n.dart';
import 'package:coloring_app/providers/picture_provider.dart';
import 'package:coloring_app/screens/coloring_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// TODO(macegora): math painted lines with template, to check on correct?
// make cancel button to erase prev paint
// make clear button to clear all paintings

/// my app widget
class MyApp extends ConsumerWidget {
  /// my app widget
  const MyApp({
    required this.flavor,
    super.key,
  });

  /// application flavor
  final AppFlavor flavor;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      showPerformanceOverlay: true,
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
      home: FlavorBanner(
        flavor: flavor,
        child: ColoringScreen(
          picture: ref.watch(pictureProvider),
        ),
      ),
    );
  }
}
