import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// enum with available brushes type
enum BrushType {
  /// simple brush. draws dot or line
  brush(
    Icons.brush,
  ),

  /// fill entire area with one color
  filling(
    Icons.format_paint_rounded,
  ),

  /// erase revious painting. simply white color
  eraser(
    Icons.layers_clear_outlined,
  );

  /// enum with available brushes type
  const BrushType(this.icon);

  /// brush type icon in menu
  final IconData icon;
}
