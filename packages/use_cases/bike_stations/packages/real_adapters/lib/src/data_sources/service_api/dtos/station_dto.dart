import 'package:json_annotation/json_annotation.dart';

import 'station_extra_dto.dart';

part 'station_dto.g.dart';

@JsonSerializable()
class StationDto {
  final String id;

  final String name;

  final double latitude;

  final double longitude;

  @JsonKey(name: 'empty_slots')
  final int emptySlots;

  @JsonKey(name: 'free_bikes')
  final int freeBikes;

  final String timestamp;

  final StationExtraDto? extra;

  const StationDto({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.emptySlots,
    required this.freeBikes,
    required this.timestamp,
    this.extra,
  });

  factory StationDto.fromJson(Map<String, dynamic> json) =>
      _$StationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StationDtoToJson(this);
}
