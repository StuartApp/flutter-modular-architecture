import 'package:distance/distance.dart';

extension DistanceExtension on Distance {
  String format() {
    if (inKilometers >= 1.0) {
      return '${inKilometers.toStringAsFixed(2)} km';
    } else {
      return '${inMeters.toInt()} meters';
    }
  }
}
