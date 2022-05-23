import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dtos/service_dto.dart';

part 'state.freezed.dart';

@freezed
class NearServicesState with _$NearServicesState {
  factory NearServicesState.loading() = ServiceSelectorLoadInProgress;

  factory NearServicesState.success({
    required List<ServiceDto> services,
    required bool showLocationPermissionWarning,
  }) = ServiceSelectorLoadSuccess;

  factory NearServicesState.failure() = ServiceSelectorLoadFailure;
}
