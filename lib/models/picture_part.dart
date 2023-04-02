import 'package:coloring_app/const_data.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_part.freezed.dart';
// part 'paint_object.g.dart';

@freezed
class PicturePart with _$PicturePart {
  const factory PicturePart({
    required int id,
    required String asset,
    required String iconPath,
    required Size size,
    required Offset coordinates,
  }) = _PicturePart;

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}
