import 'dart:ui' as ui;

import 'package:coloring_app/const_data.dart';
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

  const CustomColor._();

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}

/// get list of all available application simple colors
List<CustomColor> getAllColors() => [
      const CustomColor.oneColor(color: Colors.black),
      const CustomColor.oneColor(color: Colors.white),
      const CustomColor.oneColor(color: Colors.green),
      const CustomColor.oneColor(color: Colors.red),
      const CustomColor.oneColor(color: Colors.yellow),
      const CustomColor.oneColor(color: Colors.orange),
      const CustomColor.oneColor(color: Colors.cyan),
      const CustomColor.oneColor(color: Colors.amber),
      const CustomColor.oneColor(color: Colors.purple),
      const CustomColor.gradient(colors: AppConstData.gradients),
    ];
