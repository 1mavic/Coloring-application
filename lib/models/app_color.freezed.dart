// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomColor {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ui.Color color) oneColor,
    required TResult Function(List<Color> colors) gradient,
    required TResult Function(ui.Image image, String asset) pattern,
    required TResult Function() erase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ui.Color color)? oneColor,
    TResult? Function(List<Color> colors)? gradient,
    TResult? Function(ui.Image image, String asset)? pattern,
    TResult? Function()? erase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ui.Color color)? oneColor,
    TResult Function(List<Color> colors)? gradient,
    TResult Function(ui.Image image, String asset)? pattern,
    TResult Function()? erase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OneColor value) oneColor,
    required TResult Function(_GradientColor value) gradient,
    required TResult Function(_Pattern value) pattern,
    required TResult Function(_EraseColor value) erase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OneColor value)? oneColor,
    TResult? Function(_GradientColor value)? gradient,
    TResult? Function(_Pattern value)? pattern,
    TResult? Function(_EraseColor value)? erase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OneColor value)? oneColor,
    TResult Function(_GradientColor value)? gradient,
    TResult Function(_Pattern value)? pattern,
    TResult Function(_EraseColor value)? erase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomColorCopyWith<$Res> {
  factory $CustomColorCopyWith(
          CustomColor value, $Res Function(CustomColor) then) =
      _$CustomColorCopyWithImpl<$Res, CustomColor>;
}

/// @nodoc
class _$CustomColorCopyWithImpl<$Res, $Val extends CustomColor>
    implements $CustomColorCopyWith<$Res> {
  _$CustomColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OneColorCopyWith<$Res> {
  factory _$$_OneColorCopyWith(
          _$_OneColor value, $Res Function(_$_OneColor) then) =
      __$$_OneColorCopyWithImpl<$Res>;
  @useResult
  $Res call({ui.Color color});
}

/// @nodoc
class __$$_OneColorCopyWithImpl<$Res>
    extends _$CustomColorCopyWithImpl<$Res, _$_OneColor>
    implements _$$_OneColorCopyWith<$Res> {
  __$$_OneColorCopyWithImpl(
      _$_OneColor _value, $Res Function(_$_OneColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$_OneColor(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ui.Color,
    ));
  }
}

/// @nodoc

class _$_OneColor extends _OneColor with DiagnosticableTreeMixin {
  const _$_OneColor({required this.color}) : super._();

  /// color property
  @override
  final ui.Color color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomColor.oneColor(color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomColor.oneColor'))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneColor &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OneColorCopyWith<_$_OneColor> get copyWith =>
      __$$_OneColorCopyWithImpl<_$_OneColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ui.Color color) oneColor,
    required TResult Function(List<Color> colors) gradient,
    required TResult Function(ui.Image image, String asset) pattern,
    required TResult Function() erase,
  }) {
    return oneColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ui.Color color)? oneColor,
    TResult? Function(List<Color> colors)? gradient,
    TResult? Function(ui.Image image, String asset)? pattern,
    TResult? Function()? erase,
  }) {
    return oneColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ui.Color color)? oneColor,
    TResult Function(List<Color> colors)? gradient,
    TResult Function(ui.Image image, String asset)? pattern,
    TResult Function()? erase,
    required TResult orElse(),
  }) {
    if (oneColor != null) {
      return oneColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OneColor value) oneColor,
    required TResult Function(_GradientColor value) gradient,
    required TResult Function(_Pattern value) pattern,
    required TResult Function(_EraseColor value) erase,
  }) {
    return oneColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OneColor value)? oneColor,
    TResult? Function(_GradientColor value)? gradient,
    TResult? Function(_Pattern value)? pattern,
    TResult? Function(_EraseColor value)? erase,
  }) {
    return oneColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OneColor value)? oneColor,
    TResult Function(_GradientColor value)? gradient,
    TResult Function(_Pattern value)? pattern,
    TResult Function(_EraseColor value)? erase,
    required TResult orElse(),
  }) {
    if (oneColor != null) {
      return oneColor(this);
    }
    return orElse();
  }
}

abstract class _OneColor extends CustomColor {
  const factory _OneColor({required final ui.Color color}) = _$_OneColor;
  const _OneColor._() : super._();

  /// color property
  ui.Color get color;
  @JsonKey(ignore: true)
  _$$_OneColorCopyWith<_$_OneColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GradientColorCopyWith<$Res> {
  factory _$$_GradientColorCopyWith(
          _$_GradientColor value, $Res Function(_$_GradientColor) then) =
      __$$_GradientColorCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Color> colors});
}

/// @nodoc
class __$$_GradientColorCopyWithImpl<$Res>
    extends _$CustomColorCopyWithImpl<$Res, _$_GradientColor>
    implements _$$_GradientColorCopyWith<$Res> {
  __$$_GradientColorCopyWithImpl(
      _$_GradientColor _value, $Res Function(_$_GradientColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_$_GradientColor(
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<Color>,
    ));
  }
}

/// @nodoc

class _$_GradientColor extends _GradientColor with DiagnosticableTreeMixin {
  const _$_GradientColor({required final List<Color> colors})
      : _colors = colors,
        super._();

  /// list of colors for gradient
  final List<Color> _colors;

  /// list of colors for gradient
  @override
  List<Color> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomColor.gradient(colors: $colors)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomColor.gradient'))
      ..add(DiagnosticsProperty('colors', colors));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradientColor &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GradientColorCopyWith<_$_GradientColor> get copyWith =>
      __$$_GradientColorCopyWithImpl<_$_GradientColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ui.Color color) oneColor,
    required TResult Function(List<Color> colors) gradient,
    required TResult Function(ui.Image image, String asset) pattern,
    required TResult Function() erase,
  }) {
    return gradient(colors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ui.Color color)? oneColor,
    TResult? Function(List<Color> colors)? gradient,
    TResult? Function(ui.Image image, String asset)? pattern,
    TResult? Function()? erase,
  }) {
    return gradient?.call(colors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ui.Color color)? oneColor,
    TResult Function(List<Color> colors)? gradient,
    TResult Function(ui.Image image, String asset)? pattern,
    TResult Function()? erase,
    required TResult orElse(),
  }) {
    if (gradient != null) {
      return gradient(colors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OneColor value) oneColor,
    required TResult Function(_GradientColor value) gradient,
    required TResult Function(_Pattern value) pattern,
    required TResult Function(_EraseColor value) erase,
  }) {
    return gradient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OneColor value)? oneColor,
    TResult? Function(_GradientColor value)? gradient,
    TResult? Function(_Pattern value)? pattern,
    TResult? Function(_EraseColor value)? erase,
  }) {
    return gradient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OneColor value)? oneColor,
    TResult Function(_GradientColor value)? gradient,
    TResult Function(_Pattern value)? pattern,
    TResult Function(_EraseColor value)? erase,
    required TResult orElse(),
  }) {
    if (gradient != null) {
      return gradient(this);
    }
    return orElse();
  }
}

abstract class _GradientColor extends CustomColor {
  const factory _GradientColor({required final List<Color> colors}) =
      _$_GradientColor;
  const _GradientColor._() : super._();

  /// list of colors for gradient
  List<Color> get colors;
  @JsonKey(ignore: true)
  _$$_GradientColorCopyWith<_$_GradientColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PatternCopyWith<$Res> {
  factory _$$_PatternCopyWith(
          _$_Pattern value, $Res Function(_$_Pattern) then) =
      __$$_PatternCopyWithImpl<$Res>;
  @useResult
  $Res call({ui.Image image, String asset});
}

/// @nodoc
class __$$_PatternCopyWithImpl<$Res>
    extends _$CustomColorCopyWithImpl<$Res, _$_Pattern>
    implements _$$_PatternCopyWith<$Res> {
  __$$_PatternCopyWithImpl(_$_Pattern _value, $Res Function(_$_Pattern) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? asset = null,
  }) {
    return _then(_$_Pattern(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ui.Image,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Pattern extends _Pattern with DiagnosticableTreeMixin {
  const _$_Pattern({required this.image, required this.asset}) : super._();

  /// image converted to uiImage
  @override
  final ui.Image image;

  /// assets link
  @override
  final String asset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomColor.pattern(image: $image, asset: $asset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CustomColor.pattern'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('asset', asset));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pattern &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, asset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatternCopyWith<_$_Pattern> get copyWith =>
      __$$_PatternCopyWithImpl<_$_Pattern>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ui.Color color) oneColor,
    required TResult Function(List<Color> colors) gradient,
    required TResult Function(ui.Image image, String asset) pattern,
    required TResult Function() erase,
  }) {
    return pattern(image, asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ui.Color color)? oneColor,
    TResult? Function(List<Color> colors)? gradient,
    TResult? Function(ui.Image image, String asset)? pattern,
    TResult? Function()? erase,
  }) {
    return pattern?.call(image, asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ui.Color color)? oneColor,
    TResult Function(List<Color> colors)? gradient,
    TResult Function(ui.Image image, String asset)? pattern,
    TResult Function()? erase,
    required TResult orElse(),
  }) {
    if (pattern != null) {
      return pattern(image, asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OneColor value) oneColor,
    required TResult Function(_GradientColor value) gradient,
    required TResult Function(_Pattern value) pattern,
    required TResult Function(_EraseColor value) erase,
  }) {
    return pattern(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OneColor value)? oneColor,
    TResult? Function(_GradientColor value)? gradient,
    TResult? Function(_Pattern value)? pattern,
    TResult? Function(_EraseColor value)? erase,
  }) {
    return pattern?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OneColor value)? oneColor,
    TResult Function(_GradientColor value)? gradient,
    TResult Function(_Pattern value)? pattern,
    TResult Function(_EraseColor value)? erase,
    required TResult orElse(),
  }) {
    if (pattern != null) {
      return pattern(this);
    }
    return orElse();
  }
}

abstract class _Pattern extends CustomColor {
  const factory _Pattern(
      {required final ui.Image image,
      required final String asset}) = _$_Pattern;
  const _Pattern._() : super._();

  /// image converted to uiImage
  ui.Image get image;

  /// assets link
  String get asset;
  @JsonKey(ignore: true)
  _$$_PatternCopyWith<_$_Pattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EraseColorCopyWith<$Res> {
  factory _$$_EraseColorCopyWith(
          _$_EraseColor value, $Res Function(_$_EraseColor) then) =
      __$$_EraseColorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EraseColorCopyWithImpl<$Res>
    extends _$CustomColorCopyWithImpl<$Res, _$_EraseColor>
    implements _$$_EraseColorCopyWith<$Res> {
  __$$_EraseColorCopyWithImpl(
      _$_EraseColor _value, $Res Function(_$_EraseColor) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EraseColor extends _EraseColor with DiagnosticableTreeMixin {
  const _$_EraseColor() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CustomColor.erase()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CustomColor.erase'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EraseColor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ui.Color color) oneColor,
    required TResult Function(List<Color> colors) gradient,
    required TResult Function(ui.Image image, String asset) pattern,
    required TResult Function() erase,
  }) {
    return erase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ui.Color color)? oneColor,
    TResult? Function(List<Color> colors)? gradient,
    TResult? Function(ui.Image image, String asset)? pattern,
    TResult? Function()? erase,
  }) {
    return erase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ui.Color color)? oneColor,
    TResult Function(List<Color> colors)? gradient,
    TResult Function(ui.Image image, String asset)? pattern,
    TResult Function()? erase,
    required TResult orElse(),
  }) {
    if (erase != null) {
      return erase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OneColor value) oneColor,
    required TResult Function(_GradientColor value) gradient,
    required TResult Function(_Pattern value) pattern,
    required TResult Function(_EraseColor value) erase,
  }) {
    return erase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OneColor value)? oneColor,
    TResult? Function(_GradientColor value)? gradient,
    TResult? Function(_Pattern value)? pattern,
    TResult? Function(_EraseColor value)? erase,
  }) {
    return erase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OneColor value)? oneColor,
    TResult Function(_GradientColor value)? gradient,
    TResult Function(_Pattern value)? pattern,
    TResult Function(_EraseColor value)? erase,
    required TResult orElse(),
  }) {
    if (erase != null) {
      return erase(this);
    }
    return orElse();
  }
}

abstract class _EraseColor extends CustomColor {
  const factory _EraseColor() = _$_EraseColor;
  const _EraseColor._() : super._();
}
