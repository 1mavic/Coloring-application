import 'dart:async';
import 'dart:ui' as ui;

import 'package:coloring_app/models/app_color.dart';
import 'package:coloring_app/models/picture_part.dart';
import 'package:coloring_app/screens/color_provider.dart';
import 'package:coloring_app/ui_widgets/brush_pick.dart';
import 'package:coloring_app/ui_widgets/color_picked.dart';
import 'package:coloring_app/ui_widgets/picture_object.dart';
import 'package:flutter/material.dart';

/// home widget, need to be change on widget for displaing one image
class ColoringScreen extends StatefulWidget {
  ///
  const ColoringScreen({
    super.key,
  });

  @override
  State<ColoringScreen> createState() => _ColoringScreenState();
}

class _ColoringScreenState extends State<ColoringScreen> {
  CustomColor _currentColor = getAllColors().first;
  final List<CustomColor> patternColors = [];
  bool _isFill = false;
  int _size = 10;

  @override
  void initState() {
    super.initState();
    getImages();
  }

  Stream<ui.Image> generator(List<String> list) async* {
    for (final imageString in list) {
      final comp = Completer<ui.Image>();
      AssetImage(imageString).resolve(ImageConfiguration.empty).addListener(
        ImageStreamListener((ImageInfo info, _) {
          comp.complete(info.image);
        }),
      );
      yield await comp.future;
    }
  }

  Future<void> getImages() async {
    final completer = Completer<List<ui.Image>>();
    final imageList = <ui.Image>[];
    const list = [
      'assets/images/pattern.png',
      'assets/images/glitter.jpg',
    ];

    generator(list).listen(
      imageList.add,
      onDone: () => completer.complete(imageList),
    );

    final result = await completer.future;
    final patterns = List.generate(
      result.length,
      (index) => CustomColor.pattern(image: result[index], asset: list[index]),
    );
    setState(() {
      patternColors.addAll(patterns);
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(),
      body: ColorInherit(
        color: _currentColor,
        isFill: _isFill,
        size: _size,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const PictureObject(
              part: PicturePart(
                id: 1,
                coordinates: Offset(180, 70),
                size: Size(300, 300),
                asset: 'assets/images/Vector.svg',
                iconPath:
                    '''M9 16C8.88624 16.0011 8.77417 15.9724 8.675 15.9166C8.31667 15.7166 0 10.9916 0 4.99999C0 3.95058 0.330187 2.92777 0.943789 2.07644C1.55739 1.22512 2.4233 0.588436 3.41886 0.256583C4.41442 -0.0752696 5.48916 -0.0854683 6.49084 0.227432C7.49252 0.540332 8.37035 1.16047 9 2C9.62965 1.16047 10.5075 0.540332 11.5092 0.227432C12.5108 -0.0854683 13.5856 -0.0752696 14.5811 0.256583C15.5767 0.588436 16.4426 1.22512 17.0562 2.07644C17.6698 2.92777 18 3.95058 18 4.99999C18 7.54998 16.525 10.1666 13.6167 12.7833C12.296 13.9705 10.8581 15.0204 9.325 15.9166C9.22583 15.9724 9.11376 16.0011 9 16ZM5 1.33333C4.02754 1.33333 3.09491 1.71964 2.40728 2.40727C1.71964 3.0949 1.33333 4.02753 1.33333 4.99999C1.33333 9.59998 7.5 13.6416 9 14.5583C10.5 13.6416 16.6667 9.59998 16.6667 4.99999C16.6674 4.15235 16.3745 3.33062 15.8377 2.67461C15.3009 2.0186 14.5534 1.56884 13.7224 1.40185C12.8913 1.23486 12.0281 1.36095 11.2796 1.75867C10.531 2.1564 9.94339 2.80118 9.61667 3.58333C9.56644 3.7056 9.481 3.81018 9.37119 3.88378C9.26139 3.95738 9.13219 3.99668 9 3.99668C8.86781 3.99668 8.73861 3.95738 8.62881 3.88378C8.519 3.81018 8.43356 3.7056 8.38333 3.58333C8.10585 2.91522 7.63609 2.34463 7.03369 1.94402C6.4313 1.54341 5.72344 1.33085 5 1.33333Z''',
              ),
            ),
            const PictureObject(
              part: PicturePart(
                id: 1,
                coordinates: Offset(50, 50),
                size: Size(300, 300),
                asset: 'assets/images/Group.svg',
                iconPath:
                    '''M6.3 1L9.5 7.22222L13.5 3.33333L17.5 15H1.5L6.3 1Z''',
              ),
            ),
            RepaintBoundary(
              child: Align(
                alignment: Alignment.centerRight,
                child: ColorPickerWidget(
                  patternColors: patternColors,
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
                    // setState(() {
                    //   _isFill = false;
                    //   // _currentColor = AppColors.erase;
                    // });
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