import 'package:meta/meta.dart';

@sealed
abstract class NearServicesEvent {}

class NearServicesStarted implements NearServicesEvent {}

class NearServicesReloadPressed implements NearServicesEvent {}
