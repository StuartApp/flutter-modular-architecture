import 'package:_core/core.dart';
import 'package:either_dart/either.dart';
import 'package:latlong2/latlong.dart';

abstract class GetLastKnownLocation {
  Future<Either<PermissionFailure, LatLng>> call();
}
