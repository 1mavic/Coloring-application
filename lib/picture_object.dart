import 'dart:async';
import 'dart:developer';
import 'dart:ui' as ui;

import 'package:coloring_app/app_colors.dart';
import 'package:coloring_app/color_provider.dart';
import 'package:coloring_app/main.dart';
import 'package:coloring_app/my_clipper.dart';
import 'package:coloring_app/my_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_drawing/path_drawing.dart';

class PictureObject extends StatefulWidget {
  const PictureObject({
    Key? key,
    required this.svgPath,
    required this.asset,
  }) : super(key: key);
  final String svgPath;
  final String asset;
  @override
  State<PictureObject> createState() => _PictureObjectState();
}

class _PictureObjectState extends State<PictureObject> {
  final List<PaintObjects> objects = [];
  final List<PaintObjects> history = [];
  late Path _path;
  ui.Image? image;
  @override
  void initState() {
    _path = parseSvgPath(
      widget.svgPath,
    );
    getImage();
    super.initState();
  }

  Future<void> getImage() async {
    Completer<ImageInfo> completer = Completer();
    var img = AssetImage('assets/images/pattern.png');
    img
        .resolve(ImageConfiguration())
        .addListener(ImageStreamListener((ImageInfo info, bool _) {
      completer.complete(info);
    }));
    ImageInfo imageInfo = await completer.future;
    image = imageInfo.image;
    setState(() {});
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
    log(widget.asset);
    final provider = ColorInherit.of(context);
    return ClipPath(
      clipper: MyCustomClipper(_path),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ColoredBox(
            color: Colors.transparent,
            child: SizedBox(
              height: 300,
              width: 300,
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
                            FillColor(
                              color: provider?.color ?? AppColors.black,
                              size: provider?.size ?? 10,
                            ),
                          );
                        } else {
                          objects.add(Dot(
                            details.localPosition,
                            provider?.color ?? AppColors.black,
                            provider?.size ?? 10,
                          ));
                        }
                      });
                    },
                    onPanUpdate: (details) {
                      setState(() {
                        objects.add(Line.fromPrev(
                          details.localPosition,
                          objects.last,
                          provider?.color ?? AppColors.black,
                          provider?.size ?? 10,
                        ));
                      });
                    },
                    onPanEnd: (details) {
                      history.addAll(objects);
                      setState(() {
                        objects.clear();
                      });
                    },
                    child: CustomPaint(
                      painter: image == null
                          ? MyPainter(
                              objects: objects,
                              history: false,
                            )
                          : MyImagePainter(
                              objects: objects,
                              history: false,
                              image: image!,
                            ),
                      child: const SizedBox.expand(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          IgnorePointer(
            ignoring: true,
            child: Transform.scale(
              alignment: Alignment.topLeft,
              scale: 16,
              child: SvgPicture.asset(
                widget.asset,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HistoryPaintWidget extends StatelessWidget {
  const HistoryPaintWidget({
    Key? key,
    required this.history,
  }) : super(key: key);
  final List<PaintObjects> history;
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomPaint(
        painter: MyPainter(
          objects: history,
          history: true,
        ),
        child: const SizedBox.expand(),
      ),
    );
  }
}
