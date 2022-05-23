import 'package:freezed_annotation/freezed_annotation.dart';

import 'location_dto.dart';

part 'service_dto.g.dart';

@JsonSerializable()
class ServiceDto {
  final String id;

  final String name;

  final LocationDto location;

  @JsonKey(name: 'ebikes')
  final bool? eBikes;

  const ServiceDto({
    required this.id,
    required this.name,
    required this.location,
    this.eBikes,
  });

  factory ServiceDto.fromJson(Map<String, dynamic> json) =>
      _$ServiceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceDtoToJson(this);
}
