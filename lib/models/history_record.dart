import 'package:coloring_app/models/paint_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_record.freezed.dart';

/// history record store index of image pard with changes
/// and amount of added objects
@freezed
class HistoryRecord with _$HistoryRecord {
  /// history record store index of image pard with changes
  /// and amount of added objects
  const factory HistoryRecord.length({
    /// imdex of image to which was added
    required int index,

    /// length of objects list that we added
    required int recordLength,
  }) = _HistoryRecord;

  /// stores all object in picture part with index
  const factory HistoryRecord.objects({
    /// imdex of image to which was added
    required int index,

    /// object which were added
    required List<PaintObject> objects,
  }) = _HistoryObjectRecord;

  const HistoryRecord._();

  // factory PaintObject.fromJson(Map<String, Object?> json) =>
  //     _$PaintObjectFromJson(json);
}
