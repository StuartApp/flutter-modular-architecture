import 'package:_bike_stations_use_cases/bike_stations_use_cases.dart';
import 'package:latlong2/latlong.dart';

import '../dtos/station_dto.dart';

extension StationDtoMapper on StationDto {
  Station toService() {
    final int freeNormalBikes;
    final int freeEBikes;
    if (extra?.hasEBikes ?? false) {
      freeNormalBikes = extra?.normalBikes ?? freeBikes;
      freeEBikes = extra?.eBikes ?? 0;
    } else {
      freeNormalBikes = freeBikes;
      freeEBikes = 0;
    }
    return Station(
      id: id,
      name: name,
      emptySlots: emptySlots,
      freeNormalBikes: freeNormalBikes,
      freeEBikes: freeEBikes,
      location: LatLng(latitude, longitude),
      isFavorite: false,
    );
  }
}
