import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../models/service.dart';

abstract class ServiceRepository {
  Future<Either<NetworkFailure, List<Service>>> getAllServices();
}
