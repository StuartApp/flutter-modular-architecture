import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../models/station.dart';

abstract class StationRepository {
  Future<Either<NetworkFailure, List<Station>>> getServiceStations(String serviceId);
}
