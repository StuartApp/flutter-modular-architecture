// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceDto _$ServiceDtoFromJson(Map<String, dynamic> json) => ServiceDto(
      id: json['id'] as String,
      name: json['name'] as String,
      location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      eBikes: json['ebikes'] as bool?,
    );

Map<String, dynamic> _$ServiceDtoToJson(ServiceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'ebikes': instance.eBikes,
    };
