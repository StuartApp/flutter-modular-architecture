import 'package:_core/core.dart';
import 'package:either_dart/either.dart';
import 'package:latlong2/latlong.dart';

import '../../models/accuracy.dart';
import '../../repositories/location_repository.dart';
import '../get_current_location.dart';

class GetCurrentLocationImpl implements GetCurrentLocation {
  final LocationRepository _locationRepository;

  GetCurrentLocationImpl(this._locationRepository);

  @override
  Future<Either<PermissionFailure, LatLng>> call(Accuracy accuracy) {
    return _locationRepository.getCurrentLocation(accuracy);
  }
}
