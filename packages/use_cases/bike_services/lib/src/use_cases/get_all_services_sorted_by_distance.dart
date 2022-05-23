import 'package:either_dart/either.dart';

import '../failures/get_all_service_sorted_by_distance_failure.dart';
import '../models/service.dart';

abstract class GetAllServicesSortedByDistance {
  Future<Either<GetAllServiceSortedByDistanceFailure, List<Service>>> call();
}
