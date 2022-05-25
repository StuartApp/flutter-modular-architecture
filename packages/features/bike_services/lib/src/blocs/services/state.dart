import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dtos/service_dto.dart';

part 'state.freezed.dart';

@freezed
class ServicesState with _$ServicesState {
  factory ServicesState.loading() = ServiceSelectorLoadInProgress;

  factory ServicesState.success({
    required List<ServiceDto> services,
    required bool showLocationPermissionWarning,
  }) = ServiceSelectorLoadSuccess;

  factory ServicesState.failure() = ServiceSelectorLoadFailure;
}
