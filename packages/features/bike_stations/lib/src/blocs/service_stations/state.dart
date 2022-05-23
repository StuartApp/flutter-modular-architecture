import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dtos/station_dto.dart';

part 'state.freezed.dart';

@freezed
class ServiceStationsState with _$ServiceStationsState {
  factory ServiceStationsState.loading() = _ServiceStationsLoadInProgress;

  factory ServiceStationsState.success({
    required List<StationDto> stations,
    required bool showLocationPermissionWarning,
  }) = ServiceStationsLoadSuccess;

  factory ServiceStationsState.failure() = ServiceStationsLoadFailure;
}
