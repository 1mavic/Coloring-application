import 'package:coloring_app/const_data.dart';
import 'package:coloring_app/generated/l10n.dart';
import 'package:coloring_app/models/coloring_picture.dart';
import 'package:coloring_app/providers/color_providers.dart';
import 'package:coloring_app/providers/menu_provider.dart';
import 'package:coloring_app/ui_widgets/brush_pick.dart';
import 'package:coloring_app/ui_widgets/color_picked.dart';
import 'package:coloring_app/ui_widgets/picture_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
                    ...List.generate(
                      widget.picture.parts.length,
                      (index) => PictureObject(
                        part: widget.picture.parts[index],
                        ratio: ratio,
                        index: index,
                      ),
                    ),
                    // ...widget.picture.parts.map(
                    //   (e) => PictureObject(
                    //     part: e,
                    //     ratio: ratio,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: 70,
            right: 20,
            child: _IconButtonWidget(),
          ),
          const ColorPickerWidget(),
          const BrushPickWidget()
        ],
      ),
    );
  }
}

class _IconButtonWidget extends HookConsumerWidget {
  const _IconButtonWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 400),
    );
    return ElevatedButton(
      onPressed: () {
        if (controller.isAnimating) {
          return;
        }
        final newVal = !ref.read(menuProvider);
        ref.read(menuProvider.notifier).state = newVal;
        if (controller.isCompleted) {
          controller.reverse();
        } else {
          controller.forward();
        }
      },
      child: AnimatedIcon(
        icon: AnimatedIcons.close_menu,
        progress: controller,
        size: 40,
      ),
    );
  }
}
