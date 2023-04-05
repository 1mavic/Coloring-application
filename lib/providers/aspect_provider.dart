import 'package:hooks_riverpod/hooks_riverpod.dart';

final aspectProvider = StateNotifierProvider<AspectNotifier, double>((ref) {
  return AspectNotifier();
});

class AspectNotifier extends StateNotifier<double> {
  AspectNotifier() : super(1);

  void changeAspect(double newRatio) {
    state = newRatio;
  }
}
