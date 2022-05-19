import 'package:distance/distance.dart';
import 'package:flutter/material.dart';

import '../models/station.dart';
import '../widgets/station_list_item.dart';

const _stations = [
  Station(
    id: 'e02c5db9e6f6fca078798c9b2d486a81',
    name: 'Jardins De Can Ferrero/Pg.De La Zona Franca',
    emptySlots: 22,
    freeBikes: 9,
    freeNormalBikes: 2,
    freeEBikes: 7,
    distance: Distance(meters: 50),
    isFavorite: true,
  ),
];

class FavoriteStationsPage extends StatelessWidget {
  const FavoriteStationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite stations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final station = _stations[index];
            return StationListItem(station: station);
          },
          itemCount: _stations.length,
        ),
      ),
    );
  }
}
