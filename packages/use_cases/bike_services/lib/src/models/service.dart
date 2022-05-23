import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';

part 'service.freezed.dart';

@freezed
class Service with _$Service {
  const factory Service({
    required String id,
    required String name,
    required City city,
    required bool hasEBikes,
  }) = _Service;
}
