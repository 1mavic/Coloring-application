import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_color.freezed.dart';
// part 'paint_object.g.dart';

/// model for application color
@freezed
class CustomColor with _$CustomColor {
  /// one color model
  const factory CustomColor.oneColor({
    /// color property
    required Color color,
  }) = _OneColor;

  /// gradient model, with list of colors for gradient
  const factory CustomColor.gradient({
    /// list of colors for gradient
    required List<Color> colors,
  }) = _GradientColor;

  /// patter. drawing image pattern
  const factory CustomColor.pattern({
    /// image converted to uiImage
    required ui.Image image,

    /// assets link
    required String asset,
  }) = _Pattern;

  /// erase color (white)
  const factory CustomColor.erase() = _EraseColor;

  const CustomColor._();

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}
