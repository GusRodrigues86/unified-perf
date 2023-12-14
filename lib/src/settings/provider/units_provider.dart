import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/units.dart';

part 'units_provider.g.dart';

@Riverpod(keepAlive: true)
class UnitSettings extends _$UnitSettings {
  @override
  Units build() {
    return const Units(
      pressureIsMetric: true,
      massIsMetric: true,
      elevationInFeet: true,
      temperatureIsMetric: true,
      lengthInFeet: false,
    );
  }

  void toggleElevation(int inFeet) =>
      state = state.copyWith(elevationInFeet: inFeet == 0);

  void toggleLength(int inFeet) =>
      state = state.copyWith(lengthInFeet: inFeet == 0);

  void toggleMass(int metric) =>
      state = state.copyWith(massIsMetric: metric == 0);

  void togglePressure(int metric) =>
      state = state.copyWith(pressureIsMetric: metric == 0);

  void toggleTemp(int metric) =>
      state = state.copyWith(temperatureIsMetric: metric == 0);
}
