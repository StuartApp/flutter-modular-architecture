import 'package:_core/core.dart';
import 'package:either_dart/either.dart';
import 'package:latlong2/latlong.dart';

import '../../models/accuracy.dart';
import '../../repositories/location_repository.dart';
import '../get_last_know_location.dart';

class GetLastKnowLocationImpl implements GetLastKnownLocation {
  final LocationRepository _locationRepository;

  GetLastKnowLocationImpl(this._locationRepository);

  @override
  Future<Either<PermissionFailure, LatLng>> call() {
    return _locationRepository.getLastKnowLocation().thenRight((value) {
      if (value != null) {
        return Future.value(Right(value));
      } else {
        return _locationRepository.getCurrentLocation(Accuracy.low);
      }
    });
  }
}
