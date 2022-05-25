import 'dart:math';

import 'package:distance/distance.dart' as dist;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'station.freezed.dart';

@freezed
class Station with _$Station {
  const factory Station({
    required String id,
    required String name,
    required int emptySlots,
    required int freeNormalBikes,
    required int freeEBikes,
    required LatLng location,
    required bool isFavorite,
  }) = _Station;

  const Station._();

  int get freeBikes => freeNormalBikes + freeEBikes;

  dist.Distance distanceTo(LatLng location) {
    const calcDistance = Distance();
    return dist.Distance(meters: calcDistance(this.location, location).toInt());
  }

  double distanceToSortIndex(LatLng location) {
    final a = location;
    final b = this.location;
    return pow(a.latitude - b.latitude, 2).toDouble() +
        pow(a.longitude - b.longitude, 2).toDouble();
  }

  Station markAsFavorite() {
    return copyWith(isFavorite: true);
  }

  Station unMarkAsFavorite() {
    return copyWith(isFavorite: false);
  }
}
