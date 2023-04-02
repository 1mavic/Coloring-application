// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture_part.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PicturePart {
  int get id => throw _privateConstructorUsedError;
  String get asset => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  Offset get coordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PicturePartCopyWith<PicturePart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PicturePartCopyWith<$Res> {
  factory $PicturePartCopyWith(
          PicturePart value, $Res Function(PicturePart) then) =
      _$PicturePartCopyWithImpl<$Res, PicturePart>;
  @useResult
  $Res call(
      {int id, String asset, String iconPath, Size size, Offset coordinates});
}

/// @nodoc
class _$PicturePartCopyWithImpl<$Res, $Val extends PicturePart>
    implements $PicturePartCopyWith<$Res> {
  _$PicturePartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? asset = null,
    Object? iconPath = null,
    Object? size = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Offset,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PicturePartCopyWith<$Res>
    implements $PicturePartCopyWith<$Res> {
  factory _$$_PicturePartCopyWith(
          _$_PicturePart value, $Res Function(_$_PicturePart) then) =
      __$$_PicturePartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String asset, String iconPath, Size size, Offset coordinates});
}

/// @nodoc
class __$$_PicturePartCopyWithImpl<$Res>
    extends _$PicturePartCopyWithImpl<$Res, _$_PicturePart>
    implements _$$_PicturePartCopyWith<$Res> {
  __$$_PicturePartCopyWithImpl(
      _$_PicturePart _value, $Res Function(_$_PicturePart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? asset = null,
    Object? iconPath = null,
    Object? size = null,
    Object? coordinates = null,
  }) {
    return _then(_$_PicturePart(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_PicturePart implements _PicturePart {
  const _$_PicturePart(
      {required this.id,
      required this.asset,
      required this.iconPath,
      required this.size,
      required this.coordinates});

  @override
  final int id;
  @override
  final String asset;
  @override
  final String iconPath;
  @override
  final Size size;
  @override
  final Offset coordinates;

  @override
  String toString() {
    return 'PicturePart(id: $id, asset: $asset, iconPath: $iconPath, size: $size, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PicturePart &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, asset, iconPath, size, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PicturePartCopyWith<_$_PicturePart> get copyWith =>
      __$$_PicturePartCopyWithImpl<_$_PicturePart>(this, _$identity);
}

abstract class _PicturePart implements PicturePart {
  const factory _PicturePart(
      {required final int id,
      required final String asset,
      required final String iconPath,
      required final Size size,
      required final Offset coordinates}) = _$_PicturePart;

  @override
  int get id;
  @override
  String get asset;
  @override
  String get iconPath;
  @override
  Size get size;
  @override
  Offset get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_PicturePartCopyWith<_$_PicturePart> get copyWith =>
      throw _privateConstructorUsedError;
}
