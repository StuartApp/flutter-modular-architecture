import 'package:_bike_services_use_cases/private_ports.dart';
import 'package:_core/core.dart';
import 'package:get_it/get_it.dart';

import 'src/data_sources/service_api/service_api_data_source.dart';
import 'src/repositories/service_repository_impl.dart';

class BikeServicesRealAdaptersDependencyConfigurator
    implements DependencyConfigurator {
  @override
  void configureDependencies(
    DependencyConfigurationContext context,
    GetIt getIt,
  ) {
    getIt.registerFactory<ServiceApiDataSource>(
        () => ServiceApiDataSourceImpl());

    getIt.registerFactory<ServiceRepository>(
        () => ServiceRepositoryImpl(getIt<ServiceApiDataSource>()));
  }
}
