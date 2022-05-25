import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../responses/sorted_stations_response.dart';

abstract class GetServiceStationsSortedByDistance {
  Future<Either<NetworkFailure, SortedStationsResponse>> call(String serviceId);
}
