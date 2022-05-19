import 'package:flutter/material.dart';
import 'package:flutter_modular_architecture/pages/favorite_stations_page.dart';
import 'package:flutter_modular_architecture/pages/service_selector_page.dart';
import 'package:flutter_modular_architecture/pages/service_stations_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bici',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ServiceSelectorPage(),
      routes: {
        '/stations': (context) => const ServiceStationsPage(),
        '/stations/favorites': (context) => const FavoriteStationsPage(),
      },
    );
  }
}
