import 'package:meta/meta.dart';

@immutable
class Service {
  final String cityName;
  final String serviceName;

  const Service({
    required this.cityName,
    required this.serviceName,
  });
}
