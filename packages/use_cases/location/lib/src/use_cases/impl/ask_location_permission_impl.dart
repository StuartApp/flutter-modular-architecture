import '../../models/location_permission.dart';
import '../../repositories/location_repository.dart';
import '../ask_location_permission.dart';

class AskLocationPermissionImpl implements AskLocationPermission {
  final LocationRepository _locationRepository;

  AskLocationPermissionImpl(this._locationRepository);

  @override
  Future<LocationPermission> call() {
    return _locationRepository.askLocationPermission();
  }
}
