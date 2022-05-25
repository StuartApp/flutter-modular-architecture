import 'package:_bike_stations_use_cases/private_ports.dart';
import 'package:_core/core.dart';
import 'package:get_it/get_it.dart';

import 'src/data_sources/service_api/station_api_data_source.dart';
import 'src/repositories/station_repository_impl.dart';

class BikeStationsRealAdaptersDependencyConfigurator
    implements DependencyConfigurator {
  @override
  void configureDependencies(
    DependencyConfigurationContext context,
    GetIt getIt,
  ) {
    getIt.registerFactory<StationApiDataSource>(
        () => StationApiDataSourceImpl());

    getIt.registerFactory<StationRepository>(
        () => StationRepositoryImpl(getIt<StationApiDataSource>()));
  }
}
