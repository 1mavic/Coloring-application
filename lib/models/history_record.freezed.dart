// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryRecord {
  /// imdex of image to which was added
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, int recordLength) length,
    required TResult Function(int index, List<PaintObject> objects) objects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, int recordLength)? length,
    TResult? Function(int index, List<PaintObject> objects)? objects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, int recordLength)? length,
    TResult Function(int index, List<PaintObject> objects)? objects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryRecord value) length,
    required TResult Function(_HistoryObjectRecord value) objects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryRecord value)? length,
    TResult? Function(_HistoryObjectRecord value)? objects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryRecord value)? length,
    TResult Function(_HistoryObjectRecord value)? objects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryRecordCopyWith<HistoryRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryRecordCopyWith<$Res> {
  factory $HistoryRecordCopyWith(
          HistoryRecord value, $Res Function(HistoryRecord) then) =
      _$HistoryRecordCopyWithImpl<$Res, HistoryRecord>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$HistoryRecordCopyWithImpl<$Res, $Val extends HistoryRecord>
    implements $HistoryRecordCopyWith<$Res> {
  _$HistoryRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryRecordCopyWith<$Res>
    implements $HistoryRecordCopyWith<$Res> {
  factory _$$_HistoryRecordCopyWith(
          _$_HistoryRecord value, $Res Function(_$_HistoryRecord) then) =
      __$$_HistoryRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, int recordLength});
}

/// @nodoc
class __$$_HistoryRecordCopyWithImpl<$Res>
    extends _$HistoryRecordCopyWithImpl<$Res, _$_HistoryRecord>
    implements _$$_HistoryRecordCopyWith<$Res> {
  __$$_HistoryRecordCopyWithImpl(
      _$_HistoryRecord _value, $Res Function(_$_HistoryRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? recordLength = null,
  }) {
    return _then(_$_HistoryRecord(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      recordLength: null == recordLength
          ? _value.recordLength
          : recordLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HistoryRecord extends _HistoryRecord {
  const _$_HistoryRecord({required this.index, required this.recordLength})
      : super._();

  /// imdex of image to which was added
  @override
  final int index;

  /// length of objects list that we added
  @override
  final int recordLength;

  @override
  String toString() {
    return 'HistoryRecord.length(index: $index, recordLength: $recordLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryRecord &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.recordLength, recordLength) ||
                other.recordLength == recordLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, recordLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryRecordCopyWith<_$_HistoryRecord> get copyWith =>
      __$$_HistoryRecordCopyWithImpl<_$_HistoryRecord>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, int recordLength) length,
    required TResult Function(int index, List<PaintObject> objects) objects,
  }) {
    return length(index, recordLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, int recordLength)? length,
    TResult? Function(int index, List<PaintObject> objects)? objects,
  }) {
    return length?.call(index, recordLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, int recordLength)? length,
    TResult Function(int index, List<PaintObject> objects)? objects,
    required TResult orElse(),
  }) {
    if (length != null) {
      return length(index, recordLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryRecord value) length,
    required TResult Function(_HistoryObjectRecord value) objects,
  }) {
    return length(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryRecord value)? length,
    TResult? Function(_HistoryObjectRecord value)? objects,
  }) {
    return length?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryRecord value)? length,
    TResult Function(_HistoryObjectRecord value)? objects,
    required TResult orElse(),
  }) {
    if (length != null) {
      return length(this);
    }
    return orElse();
  }
}

abstract class _HistoryRecord extends HistoryRecord {
  const factory _HistoryRecord(
      {required final int index,
      required final int recordLength}) = _$_HistoryRecord;
  const _HistoryRecord._() : super._();

  @override

  /// imdex of image to which was added
  int get index;

  /// length of objects list that we added
  int get recordLength;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryRecordCopyWith<_$_HistoryRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HistoryObjectRecordCopyWith<$Res>
    implements $HistoryRecordCopyWith<$Res> {
  factory _$$_HistoryObjectRecordCopyWith(_$_HistoryObjectRecord value,
          $Res Function(_$_HistoryObjectRecord) then) =
      __$$_HistoryObjectRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<PaintObject> objects});
}

/// @nodoc
class __$$_HistoryObjectRecordCopyWithImpl<$Res>
    extends _$HistoryRecordCopyWithImpl<$Res, _$_HistoryObjectRecord>
    implements _$$_HistoryObjectRecordCopyWith<$Res> {
  __$$_HistoryObjectRecordCopyWithImpl(_$_HistoryObjectRecord _value,
      $Res Function(_$_HistoryObjectRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? objects = null,
  }) {
    return _then(_$_HistoryObjectRecord(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<PaintObject>,
    ));
  }
}

/// @nodoc

class _$_HistoryObjectRecord extends _HistoryObjectRecord {
  const _$_HistoryObjectRecord(
      {required this.index, required final List<PaintObject> objects})
      : _objects = objects,
        super._();

  /// imdex of image to which was added
  @override
  final int index;

  /// object which were added
  final List<PaintObject> _objects;

  /// object which were added
  @override
  List<PaintObject> get objects {
    if (_objects is EqualUnmodifiableListView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objects);
  }

  @override
  String toString() {
    return 'HistoryRecord.objects(index: $index, objects: $objects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryObjectRecord &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._objects, _objects));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_objects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryObjectRecordCopyWith<_$_HistoryObjectRecord> get copyWith =>
      __$$_HistoryObjectRecordCopyWithImpl<_$_HistoryObjectRecord>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, int recordLength) length,
    required TResult Function(int index, List<PaintObject> objects) objects,
  }) {
    return objects(index, this.objects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, int recordLength)? length,
    TResult? Function(int index, List<PaintObject> objects)? objects,
  }) {
    return objects?.call(index, this.objects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, int recordLength)? length,
    TResult Function(int index, List<PaintObject> objects)? objects,
    required TResult orElse(),
  }) {
    if (objects != null) {
      return objects(index, this.objects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryRecord value) length,
    required TResult Function(_HistoryObjectRecord value) objects,
  }) {
    return objects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HistoryRecord value)? length,
    TResult? Function(_HistoryObjectRecord value)? objects,
  }) {
    return objects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryRecord value)? length,
    TResult Function(_HistoryObjectRecord value)? objects,
    required TResult orElse(),
  }) {
    if (objects != null) {
      return objects(this);
    }
    return orElse();
  }
}

abstract class _HistoryObjectRecord extends HistoryRecord {
  const factory _HistoryObjectRecord(
      {required final int index,
      required final List<PaintObject> objects}) = _$_HistoryObjectRecord;
  const _HistoryObjectRecord._() : super._();

  @override

  /// imdex of image to which was added
  int get index;

  /// object which were added
  List<PaintObject> get objects;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryObjectRecordCopyWith<_$_HistoryObjectRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
