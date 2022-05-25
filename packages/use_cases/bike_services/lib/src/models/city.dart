import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'city.freezed.dart';

@freezed
class City with _$City {
  const factory City({
    required String name,
    required LatLng center,
  }) = _City;

  const City._();

  double distanceToSortIndex(LatLng location) {
    return pow(location.latitude - center.latitude, 2).toDouble() +
        pow(location.longitude - center.longitude, 2).toDouble();
  }
}
