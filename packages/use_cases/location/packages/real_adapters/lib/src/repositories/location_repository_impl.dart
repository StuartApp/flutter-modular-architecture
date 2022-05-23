import 'package:_core/core.dart';
import 'package:_location_use_cases/location_use_cases.dart';
import 'package:_location_use_cases/private_ports.dart';
import 'package:either_dart/either.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'package:latlong2/latlong.dart';

import '../mappers/accuracy_mapper.dart';
import '../mappers/location_permission_mapper.dart';
import '../mappers/position_mapper.dart';

class LocationRepositoryImpl implements LocationRepository {
  @override
  Future<bool> isLocationServiceEnabled() {
    return geo.Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<LocationPermission> askLocationPermission() {
    return geo.Geolocator.requestPermission()
        .then((permission) => permission.toLocationPermission());
  }

  @override
  Future<Either<PermissionFailure, LatLng>> getCurrentLocation(
      Accuracy accuracy) async {
    try {
      final position = await geo.Geolocator.getCurrentPosition(
          desiredAccuracy: accuracy.toLocationAccuracy());
      return Right(position.toLatLng());
    } on geo.LocationServiceDisabledException catch (e) {
      return Left(PermissionFailure(e));
    } on geo.PermissionDeniedException catch (e) {
      return Left(PermissionFailure(e));
    }
  }

  @override
  Future<Either<PermissionFailure, LatLng?>> getLastKnowLocation() async {
    try {
      final position = await geo.Geolocator.getLastKnownPosition();
      return Right(position?.toLatLng());
    } on geo.LocationServiceDisabledException catch (e) {
      return Left(PermissionFailure(e));
    } on geo.PermissionDeniedException catch (e) {
      return Left(PermissionFailure(e));
    }
  }
}
