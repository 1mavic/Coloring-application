import 'dart:ui' as ui;

import 'package:coloring_app/const_data.dart';
import 'package:coloring_app/models/paint_object.dart';

import 'package:flutter/rendering.dart';
// import 'package:flutter/material.dart';

/// custom canvas painter for painting user input
class MyPainter extends CustomPainter {
  /// custom canvas painter for painting user input
  const MyPainter({
    required this.objects,
  });

  /// list of paint object to draw on canvas
  final List<PaintObject> objects;
  @override
  void paint(Canvas canvas, Size size) {
    if (objects.isEmpty) return;
    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );
    final paint = Paint()..strokeCap = StrokeCap.round;
    final path = Path();
    for (final element in objects) {
      element.map(
        dot: (dot) {
          path.moveTo(dot.point.dx, dot.point.dy);
          dot.color?.map(
            oneColor: (oneColor) {
              paint
                ..color = oneColor.color
                ..shader = null;
            },
            gradient: (gradient) {
              paint.shader = const LinearGradient(
                colors: AppConstData.gradients,
              ).createShader(rect);
            },
            pattern: (pattern) {
              paint.shader = ImageShader(
                pattern.image,
                TileMode.mirror,
                TileMode.mirror,
                Matrix4.identity().storage,
              );
            },
          );
          canvas.drawPoints(
            ui.PointMode.points,
            [dot.point],
            paint..strokeWidth = dot.size.toDouble(),
          );
        },
        line: (line) {
          path.moveTo(line.start.dx, line.start.dy);
          line.color?.map(
            oneColor: (oneColor) {
              paint
                ..color = oneColor.color
                ..shader = null;
            },
            gradient: (gradient) {
              paint.shader = const LinearGradient(
                colors: AppConstData.gradients,
              ).createShader(rect);
            },
            pattern: (pattern) {
              paint.shader = ImageShader(
                pattern.image,
                TileMode.mirror,
                TileMode.mirror,
                Matrix4.identity().storage,
              );
            },
          );
          canvas.drawLine(
            line.start,
            line.end,
            paint..strokeWidth = line.size.toDouble(),
          );
        },
        fill: (fill) {
          fill.color?.map(
            oneColor: (oneColor) {
              paint
                ..color = oneColor.color
                ..shader = null;
            },
            gradient: (gradient) {
              paint.shader = const LinearGradient(
                colors: AppConstData.gradients,
              ).createShader(rect);
            },
            pattern: (pattern) {
              paint.shader = ImageShader(
                pattern.image,
                TileMode.mirror,
                TileMode.mirror,
                Matrix4.identity().storage,
              );
            },
          );
          canvas.drawPaint(
            paint,
          );
        },
      );
    }
    // canvas.restore();
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}

/// scale icon path
Path scalePath(Path path, double scaleFactor) {
  // final bounds = path.getBounds();
  // final center = bounds.center;
  final matrix = Matrix4.identity()
    // ..translate(center.dx, center.dy)
    ..scale(scaleFactor, scaleFactor);
  // ..translate(-center.dx, -center.dy);
  final scaledPath = path.transform(matrix.storage);
  return scaledPath;
}
