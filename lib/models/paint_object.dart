import 'package:coloring_app/app_colors.dart';
import 'package:coloring_app/models/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paint_object.freezed.dart';
// part 'paint_object.g.dart';

@freezed
class PaintObject with _$PaintObject {
  const factory PaintObject.dot({
    required Offset point,
    required int size,
    @Default(CustomColor.oneColor(color: Colors.black)) CustomColor? color,
  }) = _PaintDot;

  const factory PaintObject.line({
    required int size,
    required Offset start,
    required Offset end,
    @Default(CustomColor.oneColor(color: Colors.black)) CustomColor? color,
  }) = _PaintLine;

  const factory PaintObject.fill({
    @Default(CustomColor.oneColor(color: Colors.black)) CustomColor? color,
  }) = _PaintFill;

  const PaintObject._();

  Offset get lastDot => map(
        dot: (dot) => dot.point,
        line: (line) => line.end,
        fill: (fill) => Offset.zero,
      );

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}
