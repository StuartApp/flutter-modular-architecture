import 'package:_core/core.dart';
import 'package:_location_use_cases/location_use_cases.dart';
import 'package:either_dart/either.dart';

import '../../../bike_services_use_cases.dart';
import '../../responses/sorted_services_response.dart';

class GetAllServicesSortedByDistanceImpl
    implements GetAllServicesSortedByDistance {
  final GetAllServices _getAllServices;

  final GetLastKnownLocation _getLastKnownLocation;

  GetAllServicesSortedByDistanceImpl(
    this._getAllServices,
    this._getLastKnownLocation,
  );

  @override
  Future<Either<NetworkFailure, SortedServicesResponse>> call() {
    return _getAllServices().thenRight((services) {
      return _getLastKnownLocation().fold(
        (failure) {
          return Right(SortedServicesResponse(services: services));
        },
        (location) {
          return Right(SortedServicesResponse(
            services: services.toList()
              ..sort((a, b) {
                final aIndex = a.city.distanceToSortIndex(location);
                final bIndex = b.city.distanceToSortIndex(location);
                return aIndex.compareTo(bIndex);
              }),
            sortedFrom: location,
          ));
        },
      );
    });
  }
}
