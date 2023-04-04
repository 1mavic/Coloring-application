import 'package:flutter/material.dart';

/// enum with falvor values
enum AppFlavor {
  /// development falvor
  dev(
    'dev',
    Colors.redAccent,
  ),

  /// stage falvor
  stage(
    'stage',
    Colors.amberAccent,
  ),

  /// production falvor
  prod(
    'prod',
    Colors.greenAccent,
  );

  /// enum with falvor values
  const AppFlavor(
    this.name,
    this.color,
  );

  /// string with falvor name
  final String name;

  /// flavor color for banner
  final Color color;
}
