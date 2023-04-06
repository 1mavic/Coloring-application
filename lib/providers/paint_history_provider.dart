import 'package:coloring_app/models/history_record.dart';
import 'package:coloring_app/models/paint_object.dart';
import 'package:coloring_app/providers/picture_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// provider to store history record of paintings
final paintHistoryProvider =
    StateNotifierProvider<_PaintHistoryNotifier, List<List<PaintObject>>>(
        (ref) {
  final picture = ref.watch(pictureProvider);
  final historyList =
      List.generate(picture.parts.length, (int index) => <PaintObject>[]);
  return _PaintHistoryNotifier(historyList);
});

class _PaintHistoryNotifier extends StateNotifier<List<List<PaintObject>>> {
  _PaintHistoryNotifier(super.state);

  /// stores cahnges history to restore
  final List<HistoryRecord> _history = [];

  /// clear all history record. make inital state of coloring
  void clearHistory() {
    state = List.generate(state.length, (int index) => <PaintObject>[]);
    _history.clear();
  }

  /// add record to history.
  /// takes list of new paint objects and index of image part
  void addToHistory(List<PaintObject> paint, int index) {
    if (paint.isEmpty) {
      return;
    }
    paint.first.maybeMap(
      orElse: () {
        // if paint is line or dot add it to history and its length to record
        _history.add(
          HistoryRecord.length(index: index, recordLength: paint.length),
        );
        if (_history.length > 20) _history.removeAt(0);
        final newVal = [...state[index], ...paint];
        state = [
          ...state.sublist(0, index),
          newVal,
          ...state.sublist(index + 1),
        ];
      },
      fill: (value) {
        /// if paint is fill remove current history for this picture part,
        /// to not paint it because it not visible
        /// but add current history state of this pickture part
        /// to record to be able to restore it
        _history.add(
          HistoryRecord.objects(index: index, objects: state[index]),
        );
        if (_history.length > 20) _history.removeAt(0);
        final newVal = [...paint];
        state = [
          ...state.sublist(0, index),
          newVal,
          ...state.sublist(index + 1),
        ];
      },
    );
  }

  /// undo changes
  void undo() {
    if (_history.isNotEmpty) {
      /// check last added record
      /// if it is length just remove from state this amount that was added
      /// if it is object adds them
      _history.last.map(
        length: (value) {
          final newVal = state[value.index]
              .sublist(0, state[value.index].length - value.recordLength);
          state = [
            ...state.sublist(0, value.index),
            newVal,
            ...state.sublist(value.index + 1),
          ];
        },
        objects: (value) {
          final newVal = value.objects;
          state = [
            ...state.sublist(0, value.index),
            newVal,
            ...state.sublist(value.index + 1),
          ];
        },
      );

      _history.removeLast();
    }
  }
}

/// provider for undo button. if history records is empty return false
final undoButtonProvider = Provider<bool>((ref) {
  ref.watch(paintHistoryProvider);
  return ref.watch(paintHistoryProvider.notifier)._history.isEmpty;
});
