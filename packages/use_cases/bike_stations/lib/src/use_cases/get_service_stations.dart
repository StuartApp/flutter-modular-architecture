import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../models/station.dart';

abstract class GetServiceStations {
  Future<Either<NetworkFailure, List<Station>>> call(String serviceId);
}
