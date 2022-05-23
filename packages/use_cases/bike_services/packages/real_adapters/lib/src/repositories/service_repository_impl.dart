import 'package:_bike_services_use_cases/bike_services_use_cases.dart';
import 'package:_bike_services_use_cases/private_ports.dart';
import 'package:_core/core.dart';
import 'package:either_dart/either.dart';

import '../data_sources/service_api/mappers/service_dto_mapper.dart';
import '../data_sources/service_api/service_api_data_source.dart';

class ServiceRepositoryImpl implements ServiceRepository {
  final ServiceApiDataSource _serviceApiDataSource;

  ServiceRepositoryImpl(this._serviceApiDataSource);

  @override
  Future<Either<NetworkFailure, List<Service>>> getAllServices() async {
    try {
      final dtos = await _serviceApiDataSource.getAllServices();
      return Right(dtos.map((dto) => dto.toService()).toList());
    } on Exception catch (e) {
      return Left(NetworkFailure(e));
    }
  }
}
