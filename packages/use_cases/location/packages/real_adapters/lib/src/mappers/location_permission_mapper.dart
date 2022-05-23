import 'package:_location_use_cases/location_use_cases.dart';
import 'package:geolocator/geolocator.dart' as geo;

extension LocationPermissionMapper on geo.LocationPermission {
  LocationPermission toLocationPermission() {
    switch (this) {
      case geo.LocationPermission.denied:
        return LocationPermission.denied;
      case geo.LocationPermission.deniedForever:
        return LocationPermission.deniedForever;
      case geo.LocationPermission.whileInUse:
        return LocationPermission.whileInUse;
      case geo.LocationPermission.always:
        return LocationPermission.always;
      case geo.LocationPermission.unableToDetermine:
        return LocationPermission.deniedForever;
    }
  }
}
