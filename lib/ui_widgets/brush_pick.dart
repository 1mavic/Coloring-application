import 'package:coloring_app/const_data.dart';
import 'package:coloring_app/models/app_color.dart';
import 'package:coloring_app/models/brush_type.dart';
import 'package:coloring_app/providers/brush_providers.dart';
import 'package:coloring_app/providers/color_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// widget with brush options
class BrushPickWidget extends ConsumerWidget {
  /// widget with brush options
  const BrushPickWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickedBrushSize = ref.watch(brushSizeProvider);
    final pickedBrushType = ref.watch(brushProvider);
    final prevColor = ref.watch(prevColorProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  ref
                      .read(brushProvider.notifier)
                      .changeBrush(AppConstData.brushType[index]);
                  if (AppConstData.brushType[index] != BrushType.eraser) {
                    ref.read(pickedColorProvider.notifier).changeColor(
                          ref.read(prevColorProvider),
                        );
                  } else {
                    ref.read(pickedColorProvider.notifier).changeColor(
                          const CustomColor.erase(),
                        );
                  }
                },
                child: Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.bounceOut,
                    width: AppConstData.brushType[index] == pickedBrushType
                        ? 100
                        : 80,
                    height: 40,
                    child: Icon(
                      AppConstData.brushType[index].icon,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (_, __) => const SizedBox(
              height: 10,
            ),
            itemCount: AppConstData.brushType.length,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 150,
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  ref.read(brushSizeProvider.notifier).changeBrushSize(
                        AppConstData.sizeList[index],
                      );
                },
                child: Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.bounceOut,
                    width: AppConstData.sizeList[index] == pickedBrushSize
                        ? 100
                        : 80,
                    height: 40,
                    child: Center(
                      child: Container(
                        width: 10 + (10 * index).toDouble(),
                        height: 10 + (10 * index).toDouble(),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (_, __) => const SizedBox(
              height: 10,
            ),
            itemCount: AppConstData.sizeList.length,
          ),
        ),
      ],
    );
  }
}
