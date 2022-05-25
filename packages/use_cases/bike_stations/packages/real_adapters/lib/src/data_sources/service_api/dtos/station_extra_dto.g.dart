// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_extra_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationExtraDto _$StationExtraDtoFromJson(Map<String, dynamic> json) =>
    StationExtraDto(
      hasEBikes: json['has_ebikes'] as bool?,
      eBikes: json['ebikes'] as int?,
      normalBikes: json['normal_bikes'] as int?,
      online: json['online'] as bool?,
    );

Map<String, dynamic> _$StationExtraDtoToJson(StationExtraDto instance) =>
    <String, dynamic>{
      'has_ebikes': instance.hasEBikes,
      'ebikes': instance.eBikes,
      'normal_bikes': instance.normalBikes,
      'online': instance.online,
    };
