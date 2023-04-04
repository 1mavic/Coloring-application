// ignore_for_file: use_setters_to_change_properties

import 'dart:async';
import 'dart:ui' as ui;

import 'package:coloring_app/const_data.dart';
import 'package:coloring_app/models/app_color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// provider with current color to paint
final pickedColorProvider =
    StateNotifierProvider.autoDispose<_ColorNotifier, CustomColor>((ref) {
  final allColors = ref.watch(colorsProvider);
  return _ColorNotifier(allColors.first);
});

class _ColorNotifier extends StateNotifier<CustomColor> {
  _ColorNotifier(super.state);

  /// change picked color
  void changeColor(CustomColor newColor) {
    state = newColor;
  }
}

/// provider to store previous picked color
final prevColorProvider =
    StateNotifierProvider.autoDispose<_PrevColorNotifier, CustomColor>((ref) {
  final allColors = ref.watch(colorsProvider);
  return _PrevColorNotifier(allColors.first);
});

class _PrevColorNotifier extends StateNotifier<CustomColor> {
  _PrevColorNotifier(super.state);

  // change stored color. if new color is white(erase type) state is not changed
  void changePrevColor(CustomColor newColor) {
    if (newColor != const CustomColor.oneColor(color: Colors.white)) {
      state = newColor;
    }
  }
}

/// all available oneColors and gradients colors
final colorsProvider = Provider<List<CustomColor>>((ref) {
  return [
    const CustomColor.oneColor(color: Colors.black),
    // const CustomColor.oneColor(color: Colors.white),
    const CustomColor.oneColor(color: Colors.green),
    const CustomColor.oneColor(color: Colors.red),
    const CustomColor.oneColor(color: Colors.yellow),
    const CustomColor.oneColor(color: Colors.orange),
    const CustomColor.oneColor(color: Colors.cyan),
    const CustomColor.oneColor(color: Colors.amber),
    const CustomColor.oneColor(color: Colors.purple),
    const CustomColor.gradient(colors: AppConstData.gradients),
  ];
});

/// provider for all available pattern colors
final patternColorsProvider =
    StateNotifierProvider<_PatternColorsNotifier, List<CustomColor>>((ref) {
  return _PatternColorsNotifier();
});

class _PatternColorsNotifier extends StateNotifier<List<CustomColor>> {
  _PatternColorsNotifier() : super([]);

  /// load patterns on given list of image assets
  Future<void> loadPatterns(List<String> assets) async {
    final completer = Completer<List<ui.Image>>();
    final imageList = <ui.Image>[];

    _generator(assets).listen(
      imageList.add,
      onDone: () => completer.complete(imageList),
    );

    final result = await completer.future;
    final patterns = List.generate(
      result.length,
      (index) => CustomColor.pattern(
        image: result[index],
        asset: assets[index],
      ),
    );

    state = patterns;
  }

  Stream<ui.Image> _generator(List<String> list) async* {
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
}

/// provider, which combines simple and pattern colors in one list
final availableColorsProvider = Provider<List<CustomColor>>((ref) {
  final simpleColors = ref.watch(colorsProvider);
  final patterns = ref.watch(patternColorsProvider);

  return [...simpleColors, ...patterns];
});
