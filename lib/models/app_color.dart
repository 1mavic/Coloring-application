import 'package:coloring_app/app_colors.dart';
import 'package:coloring_app/const_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:ui' as ui;

part 'app_color.freezed.dart';
// part 'paint_object.g.dart';

@freezed
class CustomColor with _$CustomColor {
  const factory CustomColor.oneColor({
    required Color color,
  }) = _OneColor;

  const factory CustomColor.gradient({
    required List<Color> colors,
  }) = _GradientColor;

  const factory CustomColor.pattern({
    required ui.Image image,
    required String asset,
  }) = _Pattern;

  const CustomColor._();

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}

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
