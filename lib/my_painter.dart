import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:coloring_app/main.dart';

class MyPainter extends CustomPainter {
  const MyPainter({
    required this.objects,
    required this.needRepaint,
  });

  final List<PaintObjects> objects;
  final bool needRepaint;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 20;
    Path path = Path();
    log(objects.length.toString());
    for (var element in objects) {
      if (element is Dot) {
        path.moveTo(element.point.dx, element.point.dy);
        canvas.drawPoints(
            PointMode.points, [element.point], paint..color = element.color);
      } else if (element is Line) {
        path.moveTo(element.start.dx, element.start.dy);
        canvas.drawLine(
            element.start, element.end, paint..color = element.color);
      } else if (element is FillColor) {
        canvas.drawPaint(paint..color = element.color);
      }
    }
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}

class MyCustomPainter extends CustomPainter {
  const MyCustomPainter({
    required this.path,
  });

  final Path path;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;
    final center = Offset(size.width / 2, size.height / 2);
    final matrix = Matrix4.identity()..translate(center.dx, center.dy);
    final scaledPath = path.transform(matrix.storage);
    canvas.drawPath(scalePath(scaledPath, 15.5), paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyCustomPainter oldDelegate) => false;
}

Path scalePath(Path path, double scaleFactor) {
  final bounds = path.getBounds();
  final center = bounds.center;
  final matrix = Matrix4.identity()
    // ..translate(center.dx, center.dy)
    ..scale(scaleFactor, scaleFactor);
  // ..translate(-center.dx, -center.dy);
  final scaledPath = path.transform(matrix.storage);
  return scaledPath;
}
