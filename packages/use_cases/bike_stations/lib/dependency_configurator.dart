import 'package:_core/core.dart';
import 'package:_location_use_cases/location_use_cases.dart';
import 'package:get_it/get_it.dart';

import 'bike_stations_use_cases.dart';
import 'src/repositories/station_repository.dart';
import 'src/use_cases/impl/get_service_stations_impl.dart';
import 'src/use_cases/impl/get_service_stations_sorted_by_distance_impl.dart';

class BikeStationsDependencyConfigurator implements DependencyConfigurator {
  @override
  void configureDependencies(
    DependencyConfigurationContext context,
    GetIt getIt,
  ) {
    getIt.registerFactory<GetServiceStations>(
        () => GetServiceStationsImpl(getIt<StationRepository>()));

    getIt.registerFactory<GetServiceStationsSortedByDistance>(
        () => GetServiceStationsSortedByDistanceImpl(
              getIt<GetServiceStations>(),
              getIt<GetCurrentLocation>(),
            ));
  }
}
