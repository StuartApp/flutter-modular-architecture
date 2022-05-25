import 'package:_intent_launcher/intent_launcher.dart';

class BikeServiceStations implements NavigationIntent {
  final String serviceId;
  final String serviceName;

  const BikeServiceStations({
    required this.serviceId,
    required this.serviceName,
  });
}
