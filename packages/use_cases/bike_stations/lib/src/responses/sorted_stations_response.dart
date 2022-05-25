import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

import '../models/station.dart';

@immutable
class SortedStationsResponse {
  final LatLng? sortedFrom;
  final List<Station> stations;

  const SortedStationsResponse({
    this.sortedFrom,
    required this.stations,
  });
}
