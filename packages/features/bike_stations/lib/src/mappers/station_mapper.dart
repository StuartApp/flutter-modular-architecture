import 'package:_bike_stations_use_cases/bike_stations_use_cases.dart';
import 'package:latlong2/latlong.dart';

import '../dtos/station_dto.dart';

extension StationMapper on Station {
  StationDto toStationDto([LatLng? distanceFrom]) {
    return StationDto(
      id: id,
      name: name,
      emptySlots: emptySlots,
      freeBikes: freeBikes,
      freeNormalBikes: freeNormalBikes,
      freeEBikes: freeEBikes,
      distance: distanceFrom != null ? distanceTo(distanceFrom) : null,
      isFavorite: isFavorite,
    );
  }
}
