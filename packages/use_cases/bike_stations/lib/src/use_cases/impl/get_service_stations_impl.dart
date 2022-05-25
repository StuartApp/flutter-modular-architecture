import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../../models/station.dart';
import '../../repositories/station_repository.dart';
import '../get_service_stations.dart';

class GetServiceStationsImpl implements GetServiceStations {
  final StationRepository _stationRepository;

  GetServiceStationsImpl(this._stationRepository);

  @override
  Future<Either<NetworkFailure, List<Station>>> call(String serviceId) {
    return _stationRepository.getServiceStations(serviceId);
  }
}
