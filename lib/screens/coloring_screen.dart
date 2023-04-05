// ignore_for_file: unused_local_variable

import 'package:coloring_app/const_data.dart';
import 'package:coloring_app/generated/l10n.dart';
import 'package:coloring_app/models/coloring_picture.dart';
import 'package:coloring_app/models/picture_part.dart';
import 'package:coloring_app/providers/aspect_provider.dart';
import 'package:coloring_app/providers/color_providers.dart';
import 'package:coloring_app/ui_widgets/brush_pick.dart';
import 'package:coloring_app/ui_widgets/color_picked.dart';
import 'package:coloring_app/ui_widgets/picture_object.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// home widget, need to be change on widget for displaing one image
class ColoringScreen extends ConsumerStatefulWidget {
  ///
  const ColoringScreen({
    required this.picture,
    super.key,
  });

  /// coloring picture for this screen
  final ColoringPicture picture;
  @override
  ConsumerState<ColoringScreen> createState() => _ColoringScreenState();
}

class _ColoringScreenState extends ConsumerState<ColoringScreen> {
  @override
  void initState() {
    super.initState();
    ref
        .read(patternColorsProvider.notifier)
        .loadPatterns(AppConstData.patternsImages);
    // WidgetsBinding.instance.addPostFrameCallback((_) => checkRatio());
  }

  void checkRatio() {
    final screenWidth = MediaQuery.of(context).size.width;
    ref.read(aspectProvider.notifier).changeAspect(
          screenWidth / widget.picture.pictureSize.width,
        );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final ratio = width / widget.picture.pictureSize.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).testColoringPage),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: SizedBox(
              width: width,
              child: AspectRatio(
                aspectRatio: widget.picture.aspectRatio,
                child: Stack(
                  children: [
                    ...widget.picture.parts.map(
                      (e) => PictureObject(
                        part: e,
                        ratio: ratio,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const RepaintBoundary(
            child: Align(
              alignment: Alignment.centerRight,
              child: ColorPickerWidget(),
            ),
          ),
          const RepaintBoundary(
            child: Align(
              alignment: Alignment.centerLeft,
              child: BrushPickWidget(),
            ),
          )
        ],
      ),
    );
  }
}
