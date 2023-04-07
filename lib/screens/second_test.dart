import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:coloring_app/models/app_color.dart';
import 'package:coloring_app/models/paint_object.dart';
import 'package:coloring_app/ui_widgets/my_painter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;
import 'package:image/image.dart' as img;
import 'package:image_compare/image_compare.dart';
import 'package:path_provider/path_provider.dart';

class Test2Screen extends StatefulWidget {
  Test2Screen({Key? key}) : super(key: key);

  @override
  State<Test2Screen> createState() => _Test2ScreenState();
}

class _Test2ScreenState extends State<Test2Screen> {
  final List<PaintObject> objects = [];

  double res = 0;
  bool loading = false;
  late StreamController<List<PaintObject>> objectStream;
  @override
  void initState() {
    objectStream = StreamController.broadcast();
    super.initState();
  }

  @override
  void dispose() {
    objectStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onPanDown: (details) {
                objects.add(
                  PaintObject.dot(
                    point: details.localPosition,
                    color: const CustomColor.oneColor(color: Colors.white),
                    size: 20,
                  ),
                );
                objectStream.add(objects);
              },
              onPanUpdate: (details) {
                objects.add(
                  PaintObject.line(
                    start: objects.last.lastDot,
                    end: details.localPosition,
                    color: const CustomColor.oneColor(color: Colors.white),
                    size: 20,
                  ),
                );
                objectStream.add(objects);
              },
              child: ColoredBox(
                color: Colors.amber,
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Stack(
                    children: [
                      // Image.asset('assets/images/2.png'),
                      StreamBuilder<List<PaintObject>>(
                        stream: objectStream.stream,
                        builder: (
                          BuildContext context,
                          AsyncSnapshot<List<PaintObject>> snapshot,
                        ) {
                          if (snapshot.hasData) {
                            final data = snapshot.data;
                            if (data != null) {
                              return DigitPainterWidget(
                                objects: data,
                              );
                            } else {
                              return const SizedBox.expand();
                            }
                          }
                          return const SizedBox.expand();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Image.network(
            //         'https://github.com/nitinramadoss/image_compare/raw/main/images/seven2.PNG'),
            //     Image.network(
            //         'https://github.com/nitinramadoss/image_compare/raw/main/images/seven.PNG'),
            //   ],
            // ),
            const SizedBox(
              height: 50,
            ),

            if (loading)
              const Center(
                child: CircularProgressIndicator(),
              )
          ],
        ),
      ),
    );
  }
}

class DigitPainterWidget extends StatelessWidget {
  const DigitPainterWidget({
    super.key,
    required this.objects,
  });
  final List<PaintObject> objects;
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: paintKey,
      child: CustomPaint(
        painter: MyPainter(objects: objects),
        child: const SizedBox.expand(),
      ),
    );
  }
}

final GlobalKey paintKey = GlobalKey();

// class DigitPainter extends CustomPainter {
//   const DigitPainter(this.objects);

//   final List<PaintObject> objects;
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.white
//       ..strokeCap = StrokeCap.round
//       ..strokeWidth = 10;
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(DigitPainter oldDelegate) => false;

//   @override
//   bool shouldRebuildSemantics(DigitPainter oldDelegate) => false;
// }
