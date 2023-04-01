import 'package:flutter/material.dart';

class ColorInherit extends InheritedWidget {
  ColorInherit({
    Key? key,
    required this.child,
    required this.color,
    required this.isFill,
  }) : super(key: key, child: child);
  final Color color;
  final bool isFill;
  @override
  final Widget child;

  static ColorInherit? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorInherit>();
  }

  @override
  bool updateShouldNotify(ColorInherit oldWidget) => oldWidget.color != color;
}
