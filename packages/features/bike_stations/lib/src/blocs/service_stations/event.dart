import 'package:meta/meta.dart';

@sealed
abstract class ServiceStationsEvent {}

class ServiceStationsStarted implements ServiceStationsEvent {}

class ServiceStationsReloadPressed implements ServiceStationsEvent {}
