import 'package:meta/meta.dart';

@immutable
class ServiceDto {
  final String cityName;
  final String serviceName;

  const ServiceDto({
    required this.cityName,
    required this.serviceName,
  });
}
