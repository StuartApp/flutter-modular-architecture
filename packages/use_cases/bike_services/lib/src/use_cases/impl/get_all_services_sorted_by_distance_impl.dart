import 'package:either_dart/either.dart';
import 'package:latlong2/latlong.dart';

import '../../../bike_services_use_cases.dart';
import '../../failures/get_all_service_sorted_by_distance_failure.dart';

class GetAllServicesSortedByDistanceImpl
    implements GetAllServicesSortedByDistance {
  final GetAllServices _getAllServices;

  GetAllServicesSortedByDistanceImpl(this._getAllServices);

  @override
  Future<Either<GetAllServiceSortedByDistanceFailure, List<Service>>> call() {
    final location = LatLng(41.38726924427196, 2.164616602593128);
    return _getAllServices().either(
      (left) => GetAllServiceSortedByDistanceFailure.network(left.cause),
      (services) {
        final sortedServices = services.toList();
        sortedServices.sort((a, b) => a.city
            .distanceSortIndex(location)
            .compareTo(b.city.distanceSortIndex(location)));
        return sortedServices;
      },
    );
  }
}
