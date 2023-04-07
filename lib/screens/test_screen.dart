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

class TestScreen extends StatefulWidget {
  TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final List<PaintObject> objects = [];
  Uint8List? currentImage;
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

  Future<void> compare() async {
    setState(() {
      loading = true;
    });
    final byteData = await rootBundle.load('assets/images/2.png');

    final file = File('${(await getTemporaryDirectory()).path}/images/2.png');
    await file.create(recursive: true);
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    final a = file;

    final b = await _getImageFromWidget();
    if (b == null) {
      setState(() {
        loading = false;
      });
      return;
    }
    final result = await compareImages(
      src1: a,
      src2: b,
      algorithm: ChiSquareDistanceHistogram(),
    );
    setState(() {
      loading = false;
      res = result;
      objects.clear();
    });
  }

  Future<File?> _getImageFromWidget() async {
    try {
      RenderRepaintBoundary? boundary =
          paintKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
      if (boundary == null) return null;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();
      currentImage = pngBytes;
      setState(() {});
      final directory = await getApplicationDocumentsDirectory();
      final _file =
          await File('${directory.path}/file_name${DateTime.now()}.png')
              .writeAsBytes(pngBytes);
      return _file;
    } catch (e) {
      return null;
    }
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
                      Image.asset('assets/images/2.png'),
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
            ElevatedButton(
              onPressed: compare,
              child: const Text('compare'),
            ),
            Text(
              res.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 50,
            ),
            if (currentImage != null)
              SizedBox.square(
                dimension: 300,
                child: ColoredBox(
                  color: Colors.indigo,
                  child: Image.memory(
                    currentImage!,
                  ),
                ),
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
