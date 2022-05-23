import 'package:_core/core.dart';
import 'package:_location_use_cases/location_use_cases.dart';
import 'package:_location_use_cases/private_ports.dart';
import 'package:either_dart/either.dart';
import 'package:latlong2/latlong.dart';

class LocationRepositoryImpl implements LocationRepository {
  static final _barcelonaCenter = LatLng(41.38726924427196, 2.164616602593128);

  @override
  Future<bool> isLocationServiceEnabled() {
    return Future.value(true);
  }

  @override
  Future<LocationPermission> askLocationPermission() {
    return Future.value(LocationPermission.always);
  }

  @override
  Future<Either<PermissionFailure, LatLng>> getCurrentLocation(
      Accuracy accuracy) {
    return Future.value(Right(_barcelonaCenter));
  }

  @override
  Future<Either<PermissionFailure, LatLng?>> getLastKnowLocation() {
    return Future.value(Right(_barcelonaCenter));
  }
}
