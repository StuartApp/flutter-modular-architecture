import '../../repositories/location_repository.dart';
import '../is_location_service_enabled.dart';

class IsLocationServiceEnabledImpl implements IsLocationServiceEnabled {
  final LocationRepository _locationRepository;

  IsLocationServiceEnabledImpl(this._locationRepository);

  @override
  Future<bool> call() {
    return _locationRepository.isLocationServiceEnabled();
  }
}
