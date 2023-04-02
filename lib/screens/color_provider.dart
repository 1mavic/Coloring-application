// ignore_for_file: overridden_fields

import 'package:coloring_app/models/app_color.dart';
import 'package:flutter/material.dart';

/// inherited widget provides user picked options in menus
class ColorInherit extends InheritedWidget {
  /// inherited widget provides user picked options in menus
  const ColorInherit({
    required this.child,
    required this.color,
    required this.isFill,
    required this.size,
    super.key,
  }) : super(child: child);

  /// picked color
  final CustomColor color;

  /// is fill option active
  final bool isFill;

  /// current size picked option
  final int size;

  /// child
  @override
  final Widget child;

  ///
  static ColorInherit? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorInherit>();
  }

  @override
  bool updateShouldNotify(ColorInherit oldWidget) =>
      oldWidget.color != color ||
      oldWidget.isFill != isFill ||
      oldWidget.size != size;
}
