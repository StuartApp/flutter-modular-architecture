import 'package:_bike_services_use_cases/bike_services_use_cases.dart';
import 'package:latlong2/latlong.dart';

import '../dtos/service_dto.dart';

extension ServiceDtoMapper on ServiceDto {
  Service toService() {
    return Service(
      id: id,
      name: name,
      city: City(
        name: location.city,
        center: LatLng(location.latitude, location.longitude),
      ),
      hasEBikes: eBikes ?? false,
    );
  }
}
