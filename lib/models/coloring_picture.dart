import 'package:coloring_app/models/picture_part.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coloring_picture.freezed.dart';

/// coloring picture object. contains from picture parts
@freezed
class ColoringPicture with _$ColoringPicture {
  /// coloring picture object. contains from picture parts
  const factory ColoringPicture({
    /// picture[егку id
    required int id,

    /// picture size
    required Size pictureSize,

    /// list of picture parts
    @Default([]) List<PicturePart> parts,
  }) = _ColoringPicture;

  const ColoringPicture._();

  /// get picture aspect ratio
  double get aspectRatio => pictureSize.aspectRatio;

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}
