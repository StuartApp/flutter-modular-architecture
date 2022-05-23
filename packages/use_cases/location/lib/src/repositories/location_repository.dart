import 'package:_core/core.dart';
import 'package:either_dart/either.dart';
import 'package:latlong2/latlong.dart';

import '../models/accuracy.dart';
import '../models/location_permission.dart';

abstract class LocationRepository {
  Future<bool> isLocationServiceEnabled();

  Future<LocationPermission> askLocationPermission();

  Future<Either<PermissionFailure, LatLng?>> getLastKnowLocation();

  Future<Either<PermissionFailure, LatLng>> getCurrentLocation(
      Accuracy accuracy);
}
