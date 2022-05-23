import 'package:_bike_services_use_cases/bike_services_use_cases.dart';

import '../models/service_dto.dart';

extension ServiceMapper on Service {
  ServiceDto toServiceDto() {
    return ServiceDto(
      cityName: city.name,
      serviceName: name,
    );
  }
}
