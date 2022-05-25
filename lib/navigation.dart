import 'package:_bike_services_features/bike_services_features.dart';
import 'package:_bike_services_features/navigation_intents.dart';
import 'package:_bike_stations_features/bike_stations_features.dart';
import 'package:_bike_stations_features/navigation_intents.dart';
import 'package:_intent_launcher/intent_launcher.dart';
import 'package:flutter/material.dart';

final _launcher = IntentLauncher()
  ..onNavigationIntent<BikeServiceStations>((context, intent) {
    return Navigator.pushNamed(
      context,
      '/stations',
      arguments: [intent.serviceId, intent.serviceName],
    );
  })
  ..onNavigationIntent<FavoriteBikeStations>((context, intent) {
    return Navigator.pushNamed(context, '/stations/favorites');
  });

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  if ('/' == settings.name) {
    return _route((_) => const ServiceSelectorPage().wrapWith(_launcher));
  } else if ('/stations' == settings.name) {
    final args = settings.arguments as List<String>;
    final serviceId = args[0];
    final serviceName = args[1];
    return _route((_) {
      return ServiceStationsPage(
        serviceId: serviceId,
        serviceName: serviceName,
      ).wrapWith(_launcher);
    });
  } else if ('/stations/favorites' == settings.name) {
    return _route((_) => const FavoriteStationsPage().wrapWith(_launcher));
  }
  return null;
}

Route<dynamic> _route(WidgetBuilder builder) {
  return MaterialPageRoute(builder: builder);
}
