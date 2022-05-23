import 'package:_core/core.dart';
import 'package:either_dart/either.dart';
import 'package:latlong2/latlong.dart';

import '../models/accuracy.dart';

abstract class GetCurrentLocation {
  Future<Either<PermissionFailure, LatLng>> call(Accuracy accuracy);
}
