import 'dart:async';
import 'dart:developer';

import 'package:coloring_app/models/brush_type.dart';
import 'package:coloring_app/models/paint_object.dart';
import 'package:coloring_app/models/picture_part.dart';
import 'package:coloring_app/providers/brush_providers.dart';
import 'package:coloring_app/providers/color_providers.dart';
import 'package:coloring_app/ui_widgets/my_clipper.dart';
import 'package:coloring_app/ui_widgets/my_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_drawing/path_drawing.dart';

/// pickture object widget
/// represents individaual layer for every part of image
/// that are painted separatly
class PictureObject extends ConsumerStatefulWidget {
  /// pickture object widget
  /// represents individaual layer for every part of image
  /// that are painted separatly
  const PictureObject({
    required this.part,
    super.key,
  });

  /// part for display
  final PicturePart part;
  @override
  ConsumerState<PictureObject> createState() => _PictureObjectState();
}

class _PictureObjectState extends ConsumerState<PictureObject> {
  final List<PaintObject> objects = [];
  final List<PaintObject> history = [];
  late StreamController<List<PaintObject>> historyStream;
  late StreamController<List<PaintObject>> objectStream;
  late Path _path;
  @override
  void initState() {
    _path = parseSvgPath(
      widget.part.iconPath,
    );
    historyStream = StreamController.broadcast();
    objectStream = StreamController.broadcast();
    super.initState();
  }

  @override
  void dispose() {
    historyStream.close();
    super.dispose();
  }

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
                  StreamBuilder<List<PaintObject>>(
                    stream: historyStream.stream,
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<List<PaintObject>> snapshot,
                    ) {
                      if (snapshot.hasData) {
                        final data = snapshot.data;
                        if (data != null) {
                          return RepaintBoundary(
                            child: CustomPaint(
                              painter: MyPainter(
                                objects: history,
                              ),
                              child: const SizedBox.expand(),
                            ),
                          );
                        } else {
                          return const SizedBox.expand();
                        }
                      }
                      return const SizedBox.expand();
                    },
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onPanDown: (details) {
                      final color = ref.read(pickedColorProvider);
                      final size = ref.read(brushSizeProvider);
                      final brush = ref.read(brushProvider);
                      if (brush == BrushType.filling) {
                        objects.add(
                          PaintObject.fill(color: color),
                        );
                        objectStream.add(objects);
                      } else {
                        objects.add(
                          PaintObject.dot(
                            point: details.localPosition,
                            color: color,
                            size: size,
                          ),
                        );
                        objectStream.add(objects);
                      }
                    },
                    onPanUpdate: (details) {
                      final color = ref.read(pickedColorProvider);
                      final size = ref.read(brushSizeProvider);
                      final brush = ref.read(brushProvider);
                      if (brush == BrushType.filling) {
                        return;
                      }
                      objects.add(
                        PaintObject.line(
                          start: objects.last.lastDot,
                          end: details.localPosition,
                          color: color,
                          size: size,
                        ),
                      );
                      objectStream.add(objects);
                    },
                    onPanEnd: (details) {
                      history.addAll(objects);
                      objects.clear();
                      objectStream.add(objects);
                      historyStream.add(history);
                    },
                    child: SizedBox(
                      height: 300,
                      width: 300,
                      child: StreamBuilder<List<PaintObject>>(
                        stream: objectStream.stream,
                        builder: (
                          BuildContext context,
                          AsyncSnapshot<List<PaintObject>> snapshot,
                        ) {
                          if (snapshot.hasData) {
                            log('current build ${widget.part.id}');
                            final data = snapshot.data;
                            if (data != null) {
                              return RepaintBoundary(
                                child: CustomPaint(
                                  painter: MyPainter(
                                    objects: data,
                                  ),
                                  child: const SizedBox.expand(),
                                ),
                              );
                            } else {
                              return const SizedBox.expand();
                            }
                          }
                          return const SizedBox.expand();
                        },
                      ),
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
