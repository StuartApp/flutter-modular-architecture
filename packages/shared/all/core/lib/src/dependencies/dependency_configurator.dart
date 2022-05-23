import 'package:get_it/get_it.dart';

import 'dependency_configuration_context.dart';

abstract class DependencyConfigurator {
  void configureDependencies(
    DependencyConfigurationContext context,
    GetIt getIt,
  );
}
