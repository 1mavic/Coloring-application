// ignore_for_file: use_setters_to_change_properties

import 'package:coloring_app/const_data.dart';
import 'package:coloring_app/models/brush_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// provider with currently picked brush size
final brushSizeProvider = StateNotifierProvider<_BrushSizeNotifier, int>((ref) {
  return _BrushSizeNotifier();
});

class _BrushSizeNotifier extends StateNotifier<int> {
  _BrushSizeNotifier() : super(AppConstData.sizeList.first);

  /// change brush size
  void changeBrushSize(int newSize) {
    state = newSize;
  }
}

/// provider for currently picked brush type
final brushProvider = StateNotifierProvider<_BrushNotifier, BrushType>((ref) {
  return _BrushNotifier();
});

class _BrushNotifier extends StateNotifier<BrushType> {
  _BrushNotifier() : super(AppConstData.brushType.first);

  /// change type of brush
  void changeBrush(BrushType newType) {
    state = newType;
  }
}
