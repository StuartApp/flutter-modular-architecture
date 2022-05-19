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
    isFavorite: false,
  ),
  Station(
    id: 'f8756b6af18c2fedd8a295040279aecc',
    name: 'Pl. Poeta Boscà/Atlàntida',
    emptySlots: 0,
    freeBikes: 22,
    freeNormalBikes: 12,
    freeEBikes: 10,
    distance: Distance(meters: 176),
    isFavorite: true,
  ),
  Station(
    id: 'dc04b4e3cdc44b9f8138c24836c54d4f',
    name: 'C/ Doctor Aiguader, 2',
    emptySlots: 2,
    freeBikes: 16,
    freeNormalBikes: 4,
    freeEBikes: 13,
    distance: Distance(meters: 1133),
    isFavorite: false,
  ),
];

class ServiceStationsPage extends StatelessWidget {
  const ServiceStationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Bicing stations'),
      actions: [
        IconButton(
          icon: const Icon(Icons.star),
          tooltip: 'Favorite stations',
          onPressed: () => Navigator.pushNamed(context, '/stations/favorites'),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final station = _stations[index];
          return StationListItem(station: station);
        },
        itemCount: _stations.length,
      ),
    );
  }
}
