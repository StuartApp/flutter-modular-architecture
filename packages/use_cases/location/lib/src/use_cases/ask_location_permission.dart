import '../models/location_permission.dart';

abstract class AskLocationPermission {
  Future<LocationPermission> call();
}
