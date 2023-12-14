import 'package:equatable/equatable.dart';

class Units extends Equatable {
  const Units(
      {required this.elevationInFeet,
      required this.lengthInFeet,
      required this.massIsMetric,
      required this.pressureIsMetric,
      required this.temperatureIsMetric});

  final bool elevationInFeet;
  final bool lengthInFeet;
  final bool massIsMetric;
  final bool pressureIsMetric;
  final bool temperatureIsMetric;

  Units copyWith({
    bool? elevationInFeet,
    bool? lengthInFeet,
    bool? massIsMetric,
    bool? pressureIsMetric,
    bool? temperatureIsMetric,
  }) {
    return Units(
      elevationInFeet: elevationInFeet ?? this.elevationInFeet,
      lengthInFeet: elevationInFeet ?? this.lengthInFeet,
      massIsMetric: massIsMetric ?? this.massIsMetric,
      pressureIsMetric: pressureIsMetric ?? this.pressureIsMetric,
      temperatureIsMetric: temperatureIsMetric ?? this.temperatureIsMetric,
    );
  }

  @override
  List<Object?> get props => [
        elevationInFeet,
        lengthInFeet,
        massIsMetric,
        pressureIsMetric,
        temperatureIsMetric,
      ];

  @override
  String toString() {
    return '''
elevInFeet: $elevationInFeet, lengthInFeet: $lengthInFeet, Kg: $massIsMetric, QNH: $pressureIsMetric, temp C: $temperatureIsMetric
''';
  }
}
