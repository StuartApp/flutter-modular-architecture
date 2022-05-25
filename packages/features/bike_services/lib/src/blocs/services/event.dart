import 'package:meta/meta.dart';

@sealed
abstract class ServicesEvent {}

class NearServicesStarted implements ServicesEvent {}

class NearServicesReloadPressed implements ServicesEvent {}
