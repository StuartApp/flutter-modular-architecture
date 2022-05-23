import 'package:_core/core.dart';
import 'package:get_it/get_it.dart';

import 'bike_services_use_cases.dart';
import 'src/repositories/service_repository.dart';
import 'src/use_cases/impl/get_all_services_impl.dart';
import 'src/use_cases/impl/get_all_services_sorted_by_distance_impl.dart';

class BikeServicesDependencyConfigurator implements DependencyConfigurator {
  @override
  void configureDependencies(
    DependencyConfigurationContext context,
    GetIt getIt,
  ) {
    getIt.registerFactory<GetAllServices>(
        () => GetAllServicesImpl(getIt<ServiceRepository>()));

    getIt.registerFactory<GetAllServicesSortedByDistance>(
        () => GetAllServicesSortedByDistanceImpl(getIt<GetAllServices>()));
  }
}
