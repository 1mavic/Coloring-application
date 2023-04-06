import 'package:coloring_app/models/brush_type.dart';
import 'package:flutter/material.dart';

/// application constans
abstract class AppConstData {
  /// constant simple gradient colors
  static const List<Color> gradients = [
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.amber,
    Colors.cyan,
    Colors.orange,
    Colors.purple,
  ];

  /// available brush sizes
  static List<int> sizeList = [4, 8, 12, 16];

  /// list of all available brushes
  static List<BrushType> brushType = [
    BrushType.brush,
    BrushType.filling,
    BrushType.eraser,
  ];

  /// list of assets for pattern images coloring
  static List<String> patternsImages = [
    'assets/images/pattern.png',
    'assets/images/glitter.jpg',
  ];
}
