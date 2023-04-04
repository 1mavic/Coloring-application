import 'package:coloring_app/models/app_color.dart';
import 'package:coloring_app/models/brush_type.dart';
import 'package:coloring_app/providers/brush_providers.dart';
import 'package:coloring_app/providers/color_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// widget with all colors options for user
class ColorPickerWidget extends ConsumerWidget {
  ///
  const ColorPickerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorList = ref.watch(availableColorsProvider);
    final pickedColor = ref.watch(pickedColorProvider);
    final pickedBrush = ref.watch(brushProvider);
    return SizedBox(
      width: 250,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Align(
          alignment: Alignment.centerRight,
          child: _PickerItem(
            color: colorList[index],
            picked: pickedColor == colorList[index],
            onTap: () {
              ref.read(pickedColorProvider.notifier).changeColor(
                    colorList[index],
                  );
              ref.read(prevColorProvider.notifier).changePrevColor(
                    colorList[index],
                  );
              if (pickedBrush == BrushType.eraser) {
                ref.read(brushProvider.notifier).changeBrush(BrushType.brush);
              }
            },
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: 10,
        ),
        itemCount: colorList.length,
      ),
    );
  }
}

class _PickerItem extends StatelessWidget {
  const _PickerItem({
    required this.color,
    required this.picked,
    required this.onTap,
  });
  final CustomColor color;
  final bool picked;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          curve: Curves.bounceOut,
          width: picked ? 100 : 80,
          height: 40,
          decoration: color.map(
            erase: (_) => null,
            oneColor: (oneColor) => BoxDecoration(
              color: oneColor.color,
            ),
            gradient: (gradient) => BoxDecoration(
              gradient: LinearGradient(colors: gradient.colors),
            ),
            pattern: (pattern) => BoxDecoration(
              image: DecorationImage(
                image: Image.asset(pattern.asset).image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
