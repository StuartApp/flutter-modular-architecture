import 'package:_core/core.dart';
import 'package:_location_use_cases/location_use_cases.dart';
import 'package:either_dart/either.dart';

import '../../responses/sorted_stations_response.dart';
import '../get_service_stations.dart';
import '../get_service_stations_sorted_by_distance.dart';

class GetServiceStationsSortedByDistanceImpl
    implements GetServiceStationsSortedByDistance {
  final GetServiceStations _getServiceStations;

  final GetCurrentLocation _getCurrentLocation;

  GetServiceStationsSortedByDistanceImpl(
    this._getServiceStations,
    this._getCurrentLocation,
  );

  @override
  Future<Either<NetworkFailure, SortedStationsResponse>> call(
      String serviceId) {
    return _getServiceStations(serviceId).thenRight((stations) {
      return _getCurrentLocation(Accuracy.high).fold(
        (failure) {
          return Right(SortedStationsResponse(stations: stations));
        },
        (location) {
          return Right(SortedStationsResponse(
            stations: stations.toList()
              ..sort((a, b) {
                final aIndex = a.distanceToSortIndex(location);
                final bIndex = b.distanceToSortIndex(location);
                return aIndex.compareTo(bIndex);
              }),
            sortedFrom: location,
          ));
        },
      );
    });
  }
}
