import 'package:json_annotation/json_annotation.dart';

part 'station_extra_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class StationExtraDto {
  @JsonKey(name: 'has_ebikes')
  final bool? hasEBikes;

  @JsonKey(name: 'ebikes')
  final int? eBikes;

  final int? normalBikes;

  final bool? online;

  const StationExtraDto({
    this.hasEBikes,
    this.eBikes,
    this.normalBikes,
    this.online,
  });

  factory StationExtraDto.fromJson(Map<String, dynamic> json) =>
      _$StationExtraDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StationExtraDtoToJson(this);
}
