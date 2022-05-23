import 'package:_bike_services_use_cases/dependency_configurator.dart';
import 'package:_bike_services_use_cases_real_adapters/dependency_configurator.dart';
import 'package:_core/core.dart';
import 'package:get_it/get_it.dart';

final configurators = [
  // Bike services
  BikeServicesRealAdaptersDependencyConfigurator(),
  BikeServicesDependencyConfigurator(),
];

void configureDependencies(DependencyConfigurationContext context) {
  for (var configurator in configurators) {
    configurator.configureDependencies(context, GetIt.instance);
  }
}
