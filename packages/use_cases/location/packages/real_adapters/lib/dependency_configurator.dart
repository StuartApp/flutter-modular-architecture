import 'package:_core/core.dart';
import 'package:_location_use_cases/private_ports.dart';
import 'package:get_it/get_it.dart';

import 'src/repositories/location_repository_impl.dart';

class LocationRealAdaptersDependencyConfigurator
    implements DependencyConfigurator {
  @override
  void configureDependencies(
    DependencyConfigurationContext context,
    GetIt getIt,
  ) {
    getIt.registerFactory<LocationRepository>(() => LocationRepositoryImpl());
  }
}
