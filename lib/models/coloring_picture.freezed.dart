// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coloring_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ColoringPicture {
  /// picture[егку id
  int get id => throw _privateConstructorUsedError;

  /// picture size
  Size get pictureSize => throw _privateConstructorUsedError;

  /// list of picture parts
  List<PicturePart> get parts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColoringPictureCopyWith<ColoringPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColoringPictureCopyWith<$Res> {
  factory $ColoringPictureCopyWith(
          ColoringPicture value, $Res Function(ColoringPicture) then) =
      _$ColoringPictureCopyWithImpl<$Res, ColoringPicture>;
  @useResult
  $Res call({int id, Size pictureSize, List<PicturePart> parts});
}

/// @nodoc
class _$ColoringPictureCopyWithImpl<$Res, $Val extends ColoringPicture>
    implements $ColoringPictureCopyWith<$Res> {
  _$ColoringPictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pictureSize = null,
    Object? parts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pictureSize: null == pictureSize
          ? _value.pictureSize
          : pictureSize // ignore: cast_nullable_to_non_nullable
              as Size,
      parts: null == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<PicturePart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ColoringPictureCopyWith<$Res>
    implements $ColoringPictureCopyWith<$Res> {
  factory _$$_ColoringPictureCopyWith(
          _$_ColoringPicture value, $Res Function(_$_ColoringPicture) then) =
      __$$_ColoringPictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Size pictureSize, List<PicturePart> parts});
}

/// @nodoc
class __$$_ColoringPictureCopyWithImpl<$Res>
    extends _$ColoringPictureCopyWithImpl<$Res, _$_ColoringPicture>
    implements _$$_ColoringPictureCopyWith<$Res> {
  __$$_ColoringPictureCopyWithImpl(
      _$_ColoringPicture _value, $Res Function(_$_ColoringPicture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pictureSize = null,
    Object? parts = null,
  }) {
    return _then(_$_ColoringPicture(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pictureSize: null == pictureSize
          ? _value.pictureSize
          : pictureSize // ignore: cast_nullable_to_non_nullable
              as Size,
      parts: null == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<PicturePart>,
    ));
  }
}

/// @nodoc

class _$_ColoringPicture extends _ColoringPicture {
  const _$_ColoringPicture(
      {required this.id,
      required this.pictureSize,
      final List<PicturePart> parts = const []})
      : _parts = parts,
        super._();

  /// picture[егку id
  @override
  final int id;

  /// picture size
  @override
  final Size pictureSize;

  /// list of picture parts
  final List<PicturePart> _parts;

  /// list of picture parts
  @override
  @JsonKey()
  List<PicturePart> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'ColoringPicture(id: $id, pictureSize: $pictureSize, parts: $parts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColoringPicture &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pictureSize, pictureSize) ||
                other.pictureSize == pictureSize) &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, pictureSize,
      const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ColoringPictureCopyWith<_$_ColoringPicture> get copyWith =>
      __$$_ColoringPictureCopyWithImpl<_$_ColoringPicture>(this, _$identity);
}

abstract class _ColoringPicture extends ColoringPicture {
  const factory _ColoringPicture(
      {required final int id,
      required final Size pictureSize,
      final List<PicturePart> parts}) = _$_ColoringPicture;
  const _ColoringPicture._() : super._();

  @override

  /// picture[егку id
  int get id;
  @override

  /// picture size
  Size get pictureSize;
  @override

  /// list of picture parts
  List<PicturePart> get parts;
  @override
  @JsonKey(ignore: true)
  _$$_ColoringPictureCopyWith<_$_ColoringPicture> get copyWith =>
      throw _privateConstructorUsedError;
}
