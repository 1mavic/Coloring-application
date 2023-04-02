import 'dart:developer';
import 'dart:ui' as ui;

import 'package:coloring_app/app_colors.dart';
import 'package:coloring_app/const_data.dart';

import 'package:coloring_app/main.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  const MyPainter({
    required this.objects,
    required this.history,
  });

  final List<PaintObjects> objects;
  final bool history;
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );
    final paint = Paint()..strokeCap = StrokeCap.round;
    Path path = Path();
    for (var element in objects) {
      if (element is Dot) {
        path.moveTo(element.point.dx, element.point.dy);
        final color = element.color.color;
        if (color != null) {
          paint.color = color;
        }
        canvas.drawPoints(
            ui.PointMode.points,
            [element.point],
            paint
              ..strokeWidth = element.size.toDouble()
              ..shader = element.color == AppColors.gradient
                  ? const LinearGradient(
                      colors: AppConstData.gradients,
                    ).createShader(rect)
                  : null);
      } else if (element is Line) {
        path.moveTo(element.start.dx, element.start.dy);
        final color = element.color.color;
        if (color != null) {
          paint.color = color;
        }
        canvas.drawLine(
            element.start,
            element.end,
            paint
              ..shader = element.color == AppColors.gradient
                  ? const LinearGradient(
                      colors: AppConstData.gradients,
                    ).createShader(rect)
                  : null
              ..strokeWidth = element.size.toDouble());
      } else if (element is FillColor) {
        final color = element.color.color;
        if (color != null) {
          paint.color = color;
        }
        canvas.drawPaint(paint
          ..shader = element.color == AppColors.gradient
              ? const LinearGradient(
                  colors: AppConstData.gradients,
                ).createShader(rect)
              : null);
      }
    }
    // canvas.restore();
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}

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

class MyImagePainter extends CustomPainter {
  const MyImagePainter({
    required this.objects,
    required this.history,
    required this.image,
  });

  final List<PaintObjects> objects;
  final bool history;
  final ui.Image image;
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );
    final paint = Paint()..strokeCap = StrokeCap.round;
    Path path = Path();
    log("${history} total: " + objects.length.toString());
    for (var element in objects) {
      if (element is Dot) {
        path.moveTo(element.point.dx, element.point.dy);
        final color = element.color.color;
        if (color != null) {
          paint.color = color;
        }
        canvas.drawPoints(
            ui.PointMode.points,
            [element.point],
            paint
              ..strokeWidth = element.size.toDouble()
              ..shader = element.color == AppColors.gradient
                  ? const LinearGradient(
                      colors: AppConstData.gradients,
                    ).createShader(rect)
                  : null);
      } else if (element is Line) {
        path.moveTo(element.start.dx, element.start.dy);
        final color = element.color.color;
        if (color != null) {
          paint.color = color;
        }
        canvas.drawLine(
            element.start,
            element.end,
            paint
              ..shader = ImageShader(
                image,
                TileMode.mirror,
                TileMode.mirror,
                Matrix4.identity().storage,
              )
              ..strokeWidth = element.size.toDouble());
      } else if (element is FillColor) {
        final color = element.color.color;
        if (color != null) {
          paint.color = color;
        }
        canvas.drawPaint(paint
          ..shader = element.color == AppColors.gradient
              ? const LinearGradient(
                  colors: AppConstData.gradients,
                ).createShader(rect)
              : null);
      }
    }
    // canvas.restore();
  }

  @override
  bool shouldRepaint(MyImagePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyImagePainter oldDelegate) => false;
}
