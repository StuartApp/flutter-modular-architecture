import 'package:_bike_stations_use_cases/bike_stations_use_cases.dart';
import 'package:_bike_stations_use_cases/private_ports.dart';
import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../data_sources/service_api/mappers/service_dto_mapper.dart';
import '../data_sources/service_api/station_api_data_source.dart';

class StationRepositoryImpl implements StationRepository {
  final StationApiDataSource _stationApiDataSource;

  StationRepositoryImpl(this._stationApiDataSource);

  @override
  Future<Either<NetworkFailure, List<Station>>> getServiceStations(String serviceId) async {
    try {
      final dtos = await _stationApiDataSource.getAllStations(serviceId);
      return Right(dtos.map((dto) => dto.toService()).toList());
    } on Exception catch (e) {
      return Left(NetworkFailure(e));
    }
  }
}
