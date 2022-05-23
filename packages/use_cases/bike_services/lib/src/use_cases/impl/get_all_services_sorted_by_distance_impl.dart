import 'package:_location_use_cases/location_use_cases.dart';
import 'package:either_dart/either.dart';

import '../../../bike_services_use_cases.dart';
import '../../failures/get_all_service_sorted_by_distance_failure.dart';

class GetAllServicesSortedByDistanceImpl
    implements GetAllServicesSortedByDistance {
  final GetAllServices _getAllServices;

  final GetLastKnownLocation _getLastKnownLocation;

  GetAllServicesSortedByDistanceImpl(
    this._getAllServices,
    this._getLastKnownLocation,
  );

  @override
  Future<Either<GetAllServiceSortedByDistanceFailure, List<Service>>> call() {
    return _getLastKnownLocation().mapLeft((failure) {
      return GetAllServiceSortedByDistanceFailure.permission(failure.cause);
    }).thenRight((location) {
      return _getAllServices().either(
        (failure) {
          return GetAllServiceSortedByDistanceFailure.network(failure.cause);
        },
        (services) {
          return services.toList()
            ..sort((a, b) {
              final aIndex = a.city.distanceSortIndex(location);
              final bIndex = b.city.distanceSortIndex(location);
              return aIndex.compareTo(bIndex);
            });
        },
      );
    });
  }
}
