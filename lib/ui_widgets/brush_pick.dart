import 'dart:developer';

import 'package:coloring_app/const_data.dart';
import 'package:coloring_app/generated/l10n.dart';
import 'package:coloring_app/models/app_color.dart';
import 'package:coloring_app/models/brush_type.dart';
import 'package:coloring_app/providers/brush_providers.dart';
import 'package:coloring_app/providers/color_providers.dart';
import 'package:coloring_app/providers/paint_history_provider.dart';
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
              child: _ItemButtonWidget(
                picked: AppConstData.brushType[index] == pickedBrushType,
                onTap: () {
                  ref
                      .read(brushProvider.notifier)
                      .changeBrush(AppConstData.brushType[index]);
                  if (AppConstData.brushType[index] != BrushType.eraser) {
                    ref.read(pickedColorProvider.notifier).state =
                        ref.read(prevColorProvider);
                  } else {
                    ref.read(pickedColorProvider.notifier).state =
                        const CustomColor.erase();
                  }
                },
                child: Icon(
                  AppConstData.brushType[index].icon,
                  color: Colors.white,
                  size: 40,
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
              child: _ItemButtonWidget(
                picked: AppConstData.sizeList[index] == pickedBrushSize,
                onTap: () {
                  ref.read(brushSizeProvider.notifier).changeBrushSize(
                        AppConstData.sizeList[index],
                      );
                },
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
            separatorBuilder: (_, __) => const SizedBox(
              height: 10,
            ),
            itemCount: AppConstData.sizeList.length,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Consumer(
          builder: (context, ref, child) {
            final buttonDisabled = ref.watch(undoButtonProvider);
            return _ItemButtonWidget(
              picked: false,
              disabled: buttonDisabled,
              onTap: () async {
                ref.read(paintHistoryProvider.notifier).undo();
              },
              child: const Icon(
                Icons.undo,
                color: Colors.white,
                size: 40,
              ),
            );
          },
        ),
        const SizedBox(
          height: 10,
        ),
        _ItemButtonWidget(
          picked: false,
          onTap: () async {
            final result = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                title: Text(S.of(context).areYouShure),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text(S.of(context).yes),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text(S.of(context).no),
                  ),
                ],
              ),
            );
            if (context.mounted && (result ?? false)) {
              ref.read(paintHistoryProvider.notifier).clearHistory();
            }
          },
          child: const Icon(
            Icons.clear_rounded,
            color: Colors.white,
            size: 40,
          ),
        ),
      ],
    );
  }
}

class _ItemButtonWidget extends StatelessWidget {
  const _ItemButtonWidget({
    required this.onTap,
    required this.picked,
    required this.child,
    this.disabled = false,
  });
  final VoidCallback onTap;
  final bool picked;
  final Widget child;
  final bool disabled;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onTap,
      child: ColoredBox(
        color: disabled ? Colors.grey : Colors.blue,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            curve: Curves.bounceOut,
            width: picked ? 100 : 80,
            height: 40,
            child: child,
          ),
        ),
      ),
    );
  }
}
