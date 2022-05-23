import 'package:_location_use_cases/location_use_cases.dart';
import 'package:geolocator/geolocator.dart';

extension AccuracyMapper on Accuracy {
  LocationAccuracy toLocationAccuracy() {
    switch (this) {
      case Accuracy.high:
        return LocationAccuracy.best;
      case Accuracy.low:
        return LocationAccuracy.low;
    }
  }
}
