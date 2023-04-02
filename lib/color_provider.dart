import 'package:coloring_app/app_colors.dart';
import 'package:flutter/material.dart';

class ColorInherit extends InheritedWidget {
  const ColorInherit({
    Key? key,
    required this.child,
    required this.color,
    required this.isFill,
    required this.size,
  }) : super(key: key, child: child);
  final AppColors color;
  final bool isFill;
  final int size;
  @override
  final Widget child;

  static ColorInherit? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorInherit>();
  }

  @override
  bool updateShouldNotify(ColorInherit oldWidget) =>
      oldWidget.color != color ||
      oldWidget.isFill != isFill ||
      oldWidget.size != size;
}
