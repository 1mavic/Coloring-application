import 'package:coloring_app/models/app_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paint_object.freezed.dart';
// part 'paint_object.g.dart';

/// object represents painting object for canvas paint
@freezed
class PaintObject with _$PaintObject {
  /// simple dot with color and saize
  const factory PaintObject.dot({
    /// dot position on canvas
    required Offset point,

    /// dot size
    required int size,
    @Default(CustomColor.oneColor(color: Colors.black)) CustomColor? color,
  }) = _PaintDot;

  /// straight line
  const factory PaintObject.line({
    /// line stroke width
    required int size,

    /// start point on canvas
    required Offset start,

    /// end point on canvas
    required Offset end,
    @Default(CustomColor.oneColor(color: Colors.black)) CustomColor? color,
  }) = _PaintLine;

  /// fill image part with one color
  const factory PaintObject.fill({
    /// color property
    @Default(CustomColor.oneColor(color: Colors.black)) CustomColor? color,
  }) = _PaintFill;

  const PaintObject._();

  /// return las position of previous painting object
  /// needed to connect lines while user continue pan
  Offset get lastDot => map(
        dot: (dot) => dot.point,
        line: (line) => line.end,
        fill: (fill) => Offset.zero,
      );

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}
