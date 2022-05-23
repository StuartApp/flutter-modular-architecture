import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../models/service.dart';

abstract class GetAllServices {
  Future<Either<NetworkFailure, List<Service>>> call();
}
