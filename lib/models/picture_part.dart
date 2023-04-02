import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_part.freezed.dart';
// part 'paint_object.g.dart';

/// One part of colouring image. Each part has individual layer to paint
@freezed
class PicturePart with _$PicturePart {
  /// One part of colouring image. Each part has individual layer to paint
  const factory PicturePart({
    /// part id
    required int id,

    /// part asset link
    required String asset,

    /// part icon path of icon border
    required String iconPath,

    /// size of part
    required Size size,

    /// coordinaets of this part on screen. top left
    required Offset coordinates,
  }) = _PicturePart;

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}
