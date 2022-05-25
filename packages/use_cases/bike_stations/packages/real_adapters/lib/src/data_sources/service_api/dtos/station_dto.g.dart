// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationDto _$StationDtoFromJson(Map<String, dynamic> json) => StationDto(
      id: json['id'] as String,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      emptySlots: json['empty_slots'] as int,
      freeBikes: json['free_bikes'] as int,
      timestamp: json['timestamp'] as String,
      extra: json['extra'] == null
          ? null
          : StationExtraDto.fromJson(json['extra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StationDtoToJson(StationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'empty_slots': instance.emptySlots,
      'free_bikes': instance.freeBikes,
      'timestamp': instance.timestamp,
      'extra': instance.extra,
    };
