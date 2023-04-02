// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paint_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaintObject {
  CustomColor? get color => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset point, int size, CustomColor? color) dot,
    required TResult Function(
            int size, Offset start, Offset end, CustomColor? color)
        line,
    required TResult Function(CustomColor? color) fill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset point, int size, CustomColor? color)? dot,
    TResult? Function(int size, Offset start, Offset end, CustomColor? color)?
        line,
    TResult? Function(CustomColor? color)? fill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset point, int size, CustomColor? color)? dot,
    TResult Function(int size, Offset start, Offset end, CustomColor? color)?
        line,
    TResult Function(CustomColor? color)? fill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaintDot value) dot,
    required TResult Function(_PaintLine value) line,
    required TResult Function(_PaintFill value) fill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaintDot value)? dot,
    TResult? Function(_PaintLine value)? line,
    TResult? Function(_PaintFill value)? fill,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaintDot value)? dot,
    TResult Function(_PaintLine value)? line,
    TResult Function(_PaintFill value)? fill,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaintObjectCopyWith<PaintObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaintObjectCopyWith<$Res> {
  factory $PaintObjectCopyWith(
          PaintObject value, $Res Function(PaintObject) then) =
      _$PaintObjectCopyWithImpl<$Res, PaintObject>;
  @useResult
  $Res call({CustomColor? color});

  $CustomColorCopyWith<$Res>? get color;
}

/// @nodoc
class _$PaintObjectCopyWithImpl<$Res, $Val extends PaintObject>
    implements $PaintObjectCopyWith<$Res> {
  _$PaintObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as CustomColor?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomColorCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $CustomColorCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaintDotCopyWith<$Res>
    implements $PaintObjectCopyWith<$Res> {
  factory _$$_PaintDotCopyWith(
          _$_PaintDot value, $Res Function(_$_PaintDot) then) =
      __$$_PaintDotCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Offset point, int size, CustomColor? color});

  @override
  $CustomColorCopyWith<$Res>? get color;
}

/// @nodoc
class __$$_PaintDotCopyWithImpl<$Res>
    extends _$PaintObjectCopyWithImpl<$Res, _$_PaintDot>
    implements _$$_PaintDotCopyWith<$Res> {
  __$$_PaintDotCopyWithImpl(
      _$_PaintDot _value, $Res Function(_$_PaintDot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? size = null,
    Object? color = freezed,
  }) {
    return _then(_$_PaintDot(
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as Offset,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as CustomColor?,
    ));
  }
}

/// @nodoc

class _$_PaintDot extends _PaintDot with DiagnosticableTreeMixin {
  const _$_PaintDot(
      {required this.point,
      required this.size,
      this.color = const CustomColor.oneColor(color: Colors.black)})
      : super._();

  @override
  final Offset point;
  @override
  final int size;
  @override
  @JsonKey()
  final CustomColor? color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaintObject.dot(point: $point, size: $size, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaintObject.dot'))
      ..add(DiagnosticsProperty('point', point))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaintDot &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point, size, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaintDotCopyWith<_$_PaintDot> get copyWith =>
      __$$_PaintDotCopyWithImpl<_$_PaintDot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset point, int size, CustomColor? color) dot,
    required TResult Function(
            int size, Offset start, Offset end, CustomColor? color)
        line,
    required TResult Function(CustomColor? color) fill,
  }) {
    return dot(point, size, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset point, int size, CustomColor? color)? dot,
    TResult? Function(int size, Offset start, Offset end, CustomColor? color)?
        line,
    TResult? Function(CustomColor? color)? fill,
  }) {
    return dot?.call(point, size, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset point, int size, CustomColor? color)? dot,
    TResult Function(int size, Offset start, Offset end, CustomColor? color)?
        line,
    TResult Function(CustomColor? color)? fill,
    required TResult orElse(),
  }) {
    if (dot != null) {
      return dot(point, size, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaintDot value) dot,
    required TResult Function(_PaintLine value) line,
    required TResult Function(_PaintFill value) fill,
  }) {
    return dot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaintDot value)? dot,
    TResult? Function(_PaintLine value)? line,
    TResult? Function(_PaintFill value)? fill,
  }) {
    return dot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaintDot value)? dot,
    TResult Function(_PaintLine value)? line,
    TResult Function(_PaintFill value)? fill,
    required TResult orElse(),
  }) {
    if (dot != null) {
      return dot(this);
    }
    return orElse();
  }
}

abstract class _PaintDot extends PaintObject {
  const factory _PaintDot(
      {required final Offset point,
      required final int size,
      final CustomColor? color}) = _$_PaintDot;
  const _PaintDot._() : super._();

  Offset get point;
  int get size;
  @override
  CustomColor? get color;
  @override
  @JsonKey(ignore: true)
  _$$_PaintDotCopyWith<_$_PaintDot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaintLineCopyWith<$Res>
    implements $PaintObjectCopyWith<$Res> {
  factory _$$_PaintLineCopyWith(
          _$_PaintLine value, $Res Function(_$_PaintLine) then) =
      __$$_PaintLineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int size, Offset start, Offset end, CustomColor? color});

  @override
  $CustomColorCopyWith<$Res>? get color;
}

/// @nodoc
class __$$_PaintLineCopyWithImpl<$Res>
    extends _$PaintObjectCopyWithImpl<$Res, _$_PaintLine>
    implements _$$_PaintLineCopyWith<$Res> {
  __$$_PaintLineCopyWithImpl(
      _$_PaintLine _value, $Res Function(_$_PaintLine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? start = null,
    Object? end = null,
    Object? color = freezed,
  }) {
    return _then(_$_PaintLine(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Offset,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as Offset,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as CustomColor?,
    ));
  }
}

/// @nodoc

class _$_PaintLine extends _PaintLine with DiagnosticableTreeMixin {
  const _$_PaintLine(
      {required this.size,
      required this.start,
      required this.end,
      this.color = const CustomColor.oneColor(color: Colors.black)})
      : super._();

  @override
  final int size;
  @override
  final Offset start;
  @override
  final Offset end;
  @override
  @JsonKey()
  final CustomColor? color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaintObject.line(size: $size, start: $start, end: $end, color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaintObject.line'))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaintLine &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size, start, end, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaintLineCopyWith<_$_PaintLine> get copyWith =>
      __$$_PaintLineCopyWithImpl<_$_PaintLine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset point, int size, CustomColor? color) dot,
    required TResult Function(
            int size, Offset start, Offset end, CustomColor? color)
        line,
    required TResult Function(CustomColor? color) fill,
  }) {
    return line(size, start, end, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset point, int size, CustomColor? color)? dot,
    TResult? Function(int size, Offset start, Offset end, CustomColor? color)?
        line,
    TResult? Function(CustomColor? color)? fill,
  }) {
    return line?.call(size, start, end, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset point, int size, CustomColor? color)? dot,
    TResult Function(int size, Offset start, Offset end, CustomColor? color)?
        line,
    TResult Function(CustomColor? color)? fill,
    required TResult orElse(),
  }) {
    if (line != null) {
      return line(size, start, end, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaintDot value) dot,
    required TResult Function(_PaintLine value) line,
    required TResult Function(_PaintFill value) fill,
  }) {
    return line(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaintDot value)? dot,
    TResult? Function(_PaintLine value)? line,
    TResult? Function(_PaintFill value)? fill,
  }) {
    return line?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaintDot value)? dot,
    TResult Function(_PaintLine value)? line,
    TResult Function(_PaintFill value)? fill,
    required TResult orElse(),
  }) {
    if (line != null) {
      return line(this);
    }
    return orElse();
  }
}

abstract class _PaintLine extends PaintObject {
  const factory _PaintLine(
      {required final int size,
      required final Offset start,
      required final Offset end,
      final CustomColor? color}) = _$_PaintLine;
  const _PaintLine._() : super._();

  int get size;
  Offset get start;
  Offset get end;
  @override
  CustomColor? get color;
  @override
  @JsonKey(ignore: true)
  _$$_PaintLineCopyWith<_$_PaintLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PaintFillCopyWith<$Res>
    implements $PaintObjectCopyWith<$Res> {
  factory _$$_PaintFillCopyWith(
          _$_PaintFill value, $Res Function(_$_PaintFill) then) =
      __$$_PaintFillCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomColor? color});

  @override
  $CustomColorCopyWith<$Res>? get color;
}

/// @nodoc
class __$$_PaintFillCopyWithImpl<$Res>
    extends _$PaintObjectCopyWithImpl<$Res, _$_PaintFill>
    implements _$$_PaintFillCopyWith<$Res> {
  __$$_PaintFillCopyWithImpl(
      _$_PaintFill _value, $Res Function(_$_PaintFill) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$_PaintFill(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as CustomColor?,
    ));
  }
}

/// @nodoc

class _$_PaintFill extends _PaintFill with DiagnosticableTreeMixin {
  const _$_PaintFill(
      {this.color = const CustomColor.oneColor(color: Colors.black)})
      : super._();

  @override
  @JsonKey()
  final CustomColor? color;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaintObject.fill(color: $color)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaintObject.fill'))
      ..add(DiagnosticsProperty('color', color));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaintFill &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaintFillCopyWith<_$_PaintFill> get copyWith =>
      __$$_PaintFillCopyWithImpl<_$_PaintFill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Offset point, int size, CustomColor? color) dot,
    required TResult Function(
            int size, Offset start, Offset end, CustomColor? color)
        line,
    required TResult Function(CustomColor? color) fill,
  }) {
    return fill(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Offset point, int size, CustomColor? color)? dot,
    TResult? Function(int size, Offset start, Offset end, CustomColor? color)?
        line,
    TResult? Function(CustomColor? color)? fill,
  }) {
    return fill?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Offset point, int size, CustomColor? color)? dot,
    TResult Function(int size, Offset start, Offset end, CustomColor? color)?
        line,
    TResult Function(CustomColor? color)? fill,
    required TResult orElse(),
  }) {
    if (fill != null) {
      return fill(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaintDot value) dot,
    required TResult Function(_PaintLine value) line,
    required TResult Function(_PaintFill value) fill,
  }) {
    return fill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaintDot value)? dot,
    TResult? Function(_PaintLine value)? line,
    TResult? Function(_PaintFill value)? fill,
  }) {
    return fill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaintDot value)? dot,
    TResult Function(_PaintLine value)? line,
    TResult Function(_PaintFill value)? fill,
    required TResult orElse(),
  }) {
    if (fill != null) {
      return fill(this);
    }
    return orElse();
  }
}

abstract class _PaintFill extends PaintObject {
  const factory _PaintFill({final CustomColor? color}) = _$_PaintFill;
  const _PaintFill._() : super._();

  @override
  CustomColor? get color;
  @override
  @JsonKey(ignore: true)
  _$$_PaintFillCopyWith<_$_PaintFill> get copyWith =>
      throw _privateConstructorUsedError;
}
