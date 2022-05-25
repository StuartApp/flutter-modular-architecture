import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

import '../models/service.dart';

@immutable
class SortedServicesResponse {
  final LatLng? sortedFrom;
  final List<Service> services;

  const SortedServicesResponse({
    this.sortedFrom,
    required this.services,
  });
}
