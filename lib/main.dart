import 'dart:developer';
import 'dart:ui';

import 'package:coloring_app/app_colors.dart';
import 'package:coloring_app/brush_pick.dart';
import 'package:coloring_app/color_picked.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:widget_mask/widget_mask.dart';

import 'package:coloring_app/color_provider.dart';
import 'package:coloring_app/my_clipper.dart';
import 'package:coloring_app/my_painter.dart';
import 'package:coloring_app/picture_object.dart';

// TODO: make fancy paint with pattern
// remove brush

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AppColors _currentColor = AppColors.black;
  bool _isFill = false;
  int _size = 10;

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ColorInherit(
        color: _currentColor,
        isFill: _isFill,
        size: _size,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const Positioned(
              left: 180,
              top: 70,
              child: PictureObject(
                asset: 'assets/images/Vector.svg',
                svgPath:
                    "M9 16C8.88624 16.0011 8.77417 15.9724 8.675 15.9166C8.31667 15.7166 0 10.9916 0 4.99999C0 3.95058 0.330187 2.92777 0.943789 2.07644C1.55739 1.22512 2.4233 0.588436 3.41886 0.256583C4.41442 -0.0752696 5.48916 -0.0854683 6.49084 0.227432C7.49252 0.540332 8.37035 1.16047 9 2C9.62965 1.16047 10.5075 0.540332 11.5092 0.227432C12.5108 -0.0854683 13.5856 -0.0752696 14.5811 0.256583C15.5767 0.588436 16.4426 1.22512 17.0562 2.07644C17.6698 2.92777 18 3.95058 18 4.99999C18 7.54998 16.525 10.1666 13.6167 12.7833C12.296 13.9705 10.8581 15.0204 9.325 15.9166C9.22583 15.9724 9.11376 16.0011 9 16ZM5 1.33333C4.02754 1.33333 3.09491 1.71964 2.40728 2.40727C1.71964 3.0949 1.33333 4.02753 1.33333 4.99999C1.33333 9.59998 7.5 13.6416 9 14.5583C10.5 13.6416 16.6667 9.59998 16.6667 4.99999C16.6674 4.15235 16.3745 3.33062 15.8377 2.67461C15.3009 2.0186 14.5534 1.56884 13.7224 1.40185C12.8913 1.23486 12.0281 1.36095 11.2796 1.75867C10.531 2.1564 9.94339 2.80118 9.61667 3.58333C9.56644 3.7056 9.481 3.81018 9.37119 3.88378C9.26139 3.95738 9.13219 3.99668 9 3.99668C8.86781 3.99668 8.73861 3.95738 8.62881 3.88378C8.519 3.81018 8.43356 3.7056 8.38333 3.58333C8.10585 2.91522 7.63609 2.34463 7.03369 1.94402C6.4313 1.54341 5.72344 1.33085 5 1.33333Z",
              ),
            ),
            const Positioned(
              left: 50,
              top: 50,
              child: PictureObject(
                asset: 'assets/images/Group.svg',
                svgPath: "M6.3 1L9.5 7.22222L13.5 3.33333L17.5 15H1.5L6.3 1Z",
              ),
            ),
            RepaintBoundary(
              child: Align(
                alignment: Alignment.centerRight,
                child: ItemPickerWidget(
                  onColorChange: (color) => setState(
                    () {
                      _currentColor = color;
                    },
                  ),
                ),
              ),
            ),
            RepaintBoundary(
              child: Align(
                alignment: Alignment.centerLeft,
                child: BrushPickWidget(
                  onSizePick: (size) {
                    setState(() {
                      _size = size;
                    });
                  },
                  onBrushPick: () {
                    setState(() {
                      _isFill = false;
                    });
                  },
                  onPaintFillPick: () {
                    setState(() {
                      _isFill = true;
                    });
                  },
                  onErasePick: () {
                    setState(() {
                      _isFill = false;
                      _currentColor = AppColors.erase;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaintObjects {
  const PaintObjects({
    required this.color,
    required this.size,
  });
  final AppColors color;
  final int size;
}

class Line extends PaintObjects {
  final Offset start;
  final Offset end;

  Line(this.start, this.end, AppColors color, int size)
      : super(color: color, size: size);
  Line.fromPrev(this.end, PaintObjects prev, AppColors color, int size)
      : start = (prev is Dot)
            ? prev.point
            : (prev is Line)
                ? prev.end
                : end,
        super(color: color, size: size);
}

class Dot extends PaintObjects {
  final Offset point;

  Dot(this.point, AppColors color, int size) : super(color: color, size: size);
}

class FillColor extends PaintObjects {
  FillColor({required super.color, required super.size});
}
