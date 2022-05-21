import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/service.dart';

part 'state.freezed.dart';

@freezed
class NearServicesState with _$NearServicesState {
  factory NearServicesState.loading() = ServiceSelectorLoadInProgress;

  factory NearServicesState.success({
    required List<Service> services,
  }) = ServiceSelectorLoadSuccess;

  factory NearServicesState.failure() = ServiceSelectorLoadFailure;
}
