import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../responses/sorted_services_response.dart';

abstract class GetAllServicesSortedByDistance {
  Future<Either<NetworkFailure, SortedServicesResponse>> call();
}
