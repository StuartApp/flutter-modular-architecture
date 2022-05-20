import 'package:_bike_services_features/bike_services_features.dart';
import 'package:_bike_services_features/navigation_intents.dart';
import 'package:_bike_stations_features/bike_stations_features.dart';
import 'package:_bike_stations_features/navigation_intents.dart';
import 'package:_intent_launcher/intent_launcher.dart';
import 'package:flutter/material.dart';

final _launcher = IntentLauncher()
  ..onNavigationIntent<BikeServiceStations>((context) {
    return Navigator.pushNamed(context, '/stations');
  })
  ..onNavigationIntent<FavoriteBikeStations>((context) {
    return Navigator.pushNamed(context, '/stations/favorites');
  });

final Map<String, WidgetBuilder> routes = {
  '/': (context) {
    return const ServiceSelectorPage().wrapWith(_launcher);
  },
  '/stations': (context) {
    return const ServiceStationsPage().wrapWith(_launcher);
  },
  '/stations/favorites': (context) {
    return const FavoriteStationsPage().wrapWith(_launcher);
  },
};
