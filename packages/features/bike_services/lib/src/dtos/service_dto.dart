import 'package:meta/meta.dart';

@immutable
class ServiceDto {
  final String id;
  final String cityName;
  final String serviceName;

  const ServiceDto({
    required this.id,
    required this.cityName,
    required this.serviceName,
  });
}
