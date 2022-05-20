import 'package:_features_bike_services/features_bike_services.dart';
import 'package:_features_bike_services/navigation_intents.dart';
import 'package:_intent_launcher/intent_launcher.dart';
import 'package:flutter/material.dart';

import 'pages/favorite_stations_page.dart';
import 'pages/service_stations_page.dart';

final _launcher = IntentLauncher()
  ..onNavigationIntent<BikeServiceStations>((context) {
    return Navigator.pushNamed(context, '/stations');
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
