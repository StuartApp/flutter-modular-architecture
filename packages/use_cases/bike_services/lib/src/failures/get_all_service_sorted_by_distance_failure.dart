import 'package:_core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_service_sorted_by_distance_failure.freezed.dart';

@Freezed(
  copyWith: false,
  map: FreezedMapOptions(maybeMap: false),
  when: FreezedWhenOptions(maybeWhen: false),
)
class GetAllServiceSortedByDistanceFailure
    with _$GetAllServiceSortedByDistanceFailure {
  @Implements<NetworkFailure>()
  factory GetAllServiceSortedByDistanceFailure.network(Object cause) = _Network;

  @Implements<PermissionFailure>()
  factory GetAllServiceSortedByDistanceFailure.permission(Object cause) =
      _Permission;
}
