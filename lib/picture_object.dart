import 'dart:async';
import 'dart:developer';
import 'dart:ui' as ui;

import 'package:coloring_app/app_colors.dart';
import 'package:coloring_app/color_provider.dart';
import 'package:coloring_app/models/app_color.dart';
import 'package:coloring_app/models/paint_object.dart';
import 'package:coloring_app/models/picture_part.dart';
import 'package:coloring_app/my_clipper.dart';
import 'package:coloring_app/my_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_drawing/path_drawing.dart';

class PictureObject extends StatefulWidget {
  const PictureObject({
    Key? key,
    required this.part,
  }) : super(key: key);
  final PicturePart part;
  @override
  State<PictureObject> createState() => _PictureObjectState();
}

class _PictureObjectState extends State<PictureObject> {
  final List<PaintObject> objects = [];
  final List<PaintObject> history = [];
  late Path _path;
  // ui.Image? image;
  @override
  void initState() {
    _path = parseSvgPath(
      widget.part.iconPath,
    );
    // getImage();
    super.initState();
  }

  // Future<void> getImage() async {
  //   Completer<ImageInfo> completer = Completer();
  //   var img = AssetImage('assets/images/pattern.png');
  //   img
  //       .resolve(ImageConfiguration())
  //       .addListener(ImageStreamListener((ImageInfo info, bool _) {
  //     completer.complete(info);
  //   }));
  //   ImageInfo imageInfo = await completer.future;
  //   image = imageInfo.image;
  //   setState(() {});
  // }

  Path parseSvgPath(String svgPath) {
    final path = parseSvgPathData(svgPath);

    final bounds = path.getBounds();
    final outerBorder = Path();
    path.computeMetrics().forEach((metric) {
      final segment = metric.extractPath(0, metric.length);
      if (bounds == segment.getBounds()) {
        outerBorder.addPath(segment, Offset.zero);
      }
    });
    return outerBorder;
  }

  @override
  Widget build(BuildContext context) {
    final provider = ColorInherit.of(context);
    return Positioned(
      left: widget.part.coordinates.dx,
      top: widget.part.coordinates.dy,
      child: ClipPath(
        clipper: MyCustomClipper(_path),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox.fromSize(
              size: widget.part.size,
              child: Stack(
                children: [
                  HistoryPaintWidget(
                    history: history,
                  ),
                  GestureDetector(
                    onPanDown: (details) {
                      setState(() {
                        if (provider?.isFill ?? false) {
                          objects.add(
                            PaintObject.fill(color: provider?.color),
                          );
                        } else {
                          objects.add(
                            PaintObject.dot(
                              point: details.localPosition,
                              color: provider?.color,
                              size: provider?.size ?? 10,
                            ),
                          );
                        }
                      });
                    },
                    onPanUpdate: (details) {
                      setState(() {
                        objects.add(
                          PaintObject.line(
                            start: objects.last.lastDot,
                            end: details.localPosition,
                            color: provider?.color,
                            size: provider?.size ?? 10,
                          ),
                        );
                      });
                    },
                    onPanEnd: (details) {
                      history.addAll(objects);
                      setState(() {
                        objects.clear();
                      });
                    },
                    child: CustomPaint(
                      painter: MyPainter(
                        objects: objects,
                      ),
                      child: const SizedBox.expand(),
                    ),
                  ),
                ],
              ),
            ),
            IgnorePointer(
              child: Transform.scale(
                alignment: Alignment.topLeft,
                scale: 16,
                child: SvgPicture.asset(
                  widget.part.asset,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryPaintWidget extends StatelessWidget {
  const HistoryPaintWidget({
    Key? key,
    required this.history,
  }) : super(key: key);
  final List<PaintObject> history;
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomPaint(
        painter: MyPainter(
          objects: history,
        ),
        child: const SizedBox.expand(),
      ),
    );
  }
}
