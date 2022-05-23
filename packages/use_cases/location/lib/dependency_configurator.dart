import 'package:_core/core.dart';
import 'package:get_it/get_it.dart';

import 'src/repositories/location_repository.dart';
import 'src/use_cases/ask_location_permission.dart';
import 'src/use_cases/get_current_location.dart';
import 'src/use_cases/get_last_know_location.dart';
import 'src/use_cases/impl/ask_location_permission_impl.dart';
import 'src/use_cases/impl/get_current_location_impl.dart';
import 'src/use_cases/impl/get_last_know_location_impl.dart';
import 'src/use_cases/impl/is_location_service_enabled_impl.dart';
import 'src/use_cases/is_location_service_enabled.dart';

class LocationDependencyConfigurator implements DependencyConfigurator {
  @override
  void configureDependencies(
    DependencyConfigurationContext context,
    GetIt getIt,
  ) {
    getIt.registerFactory<AskLocationPermission>(
        () => AskLocationPermissionImpl(getIt<LocationRepository>()));

    getIt.registerFactory<GetCurrentLocation>(
        () => GetCurrentLocationImpl(getIt<LocationRepository>()));

    getIt.registerFactory<GetLastKnownLocation>(
        () => GetLastKnowLocationImpl(getIt<LocationRepository>()));

    getIt.registerFactory<IsLocationServiceEnabled>(
        () => IsLocationServiceEnabledImpl(getIt<LocationRepository>()));
  }
}
