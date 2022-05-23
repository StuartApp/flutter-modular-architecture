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

  int distanceSortIndex(LatLng location) {
    return pow(location.latitude - center.latitude, 2).toInt() +
        pow(location.longitude - center.longitude, 2).toInt();
  }
}
