// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServiceStationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceStationsLoadInProgress value) loading,
    required TResult Function(ServiceStationsLoadSuccess value) success,
    required TResult Function(ServiceStationsLoadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServiceStationsLoadInProgress value)? loading,
    TResult Function(ServiceStationsLoadSuccess value)? success,
    TResult Function(ServiceStationsLoadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceStationsLoadInProgress value)? loading,
    TResult Function(ServiceStationsLoadSuccess value)? success,
    TResult Function(ServiceStationsLoadFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStationsStateCopyWith<$Res> {
  factory $ServiceStationsStateCopyWith(ServiceStationsState value,
          $Res Function(ServiceStationsState) then) =
      _$ServiceStationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceStationsStateCopyWithImpl<$Res>
    implements $ServiceStationsStateCopyWith<$Res> {
  _$ServiceStationsStateCopyWithImpl(this._value, this._then);

  final ServiceStationsState _value;
  // ignore: unused_field
  final $Res Function(ServiceStationsState) _then;
}

/// @nodoc
abstract class _$$_ServiceStationsLoadInProgressCopyWith<$Res> {
  factory _$$_ServiceStationsLoadInProgressCopyWith(
          _$_ServiceStationsLoadInProgress value,
          $Res Function(_$_ServiceStationsLoadInProgress) then) =
      __$$_ServiceStationsLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServiceStationsLoadInProgressCopyWithImpl<$Res>
    extends _$ServiceStationsStateCopyWithImpl<$Res>
    implements _$$_ServiceStationsLoadInProgressCopyWith<$Res> {
  __$$_ServiceStationsLoadInProgressCopyWithImpl(
      _$_ServiceStationsLoadInProgress _value,
      $Res Function(_$_ServiceStationsLoadInProgress) _then)
      : super(_value, (v) => _then(v as _$_ServiceStationsLoadInProgress));

  @override
  _$_ServiceStationsLoadInProgress get _value =>
      super._value as _$_ServiceStationsLoadInProgress;
}

/// @nodoc

class _$_ServiceStationsLoadInProgress
    implements _ServiceStationsLoadInProgress {
  _$_ServiceStationsLoadInProgress();

  @override
  String toString() {
    return 'ServiceStationsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceStationsLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)
        success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceStationsLoadInProgress value) loading,
    required TResult Function(ServiceStationsLoadSuccess value) success,
    required TResult Function(ServiceStationsLoadFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServiceStationsLoadInProgress value)? loading,
    TResult Function(ServiceStationsLoadSuccess value)? success,
    TResult Function(ServiceStationsLoadFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceStationsLoadInProgress value)? loading,
    TResult Function(ServiceStationsLoadSuccess value)? success,
    TResult Function(ServiceStationsLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ServiceStationsLoadInProgress implements ServiceStationsState {
  factory _ServiceStationsLoadInProgress() = _$_ServiceStationsLoadInProgress;
}

/// @nodoc
abstract class _$$ServiceStationsLoadSuccessCopyWith<$Res> {
  factory _$$ServiceStationsLoadSuccessCopyWith(
          _$ServiceStationsLoadSuccess value,
          $Res Function(_$ServiceStationsLoadSuccess) then) =
      __$$ServiceStationsLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<StationDto> stations, bool showLocationPermissionWarning});
}

/// @nodoc
class __$$ServiceStationsLoadSuccessCopyWithImpl<$Res>
    extends _$ServiceStationsStateCopyWithImpl<$Res>
    implements _$$ServiceStationsLoadSuccessCopyWith<$Res> {
  __$$ServiceStationsLoadSuccessCopyWithImpl(
      _$ServiceStationsLoadSuccess _value,
      $Res Function(_$ServiceStationsLoadSuccess) _then)
      : super(_value, (v) => _then(v as _$ServiceStationsLoadSuccess));

  @override
  _$ServiceStationsLoadSuccess get _value =>
      super._value as _$ServiceStationsLoadSuccess;

  @override
  $Res call({
    Object? stations = freezed,
    Object? showLocationPermissionWarning = freezed,
  }) {
    return _then(_$ServiceStationsLoadSuccess(
      stations: stations == freezed
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<StationDto>,
      showLocationPermissionWarning: showLocationPermissionWarning == freezed
          ? _value.showLocationPermissionWarning
          : showLocationPermissionWarning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceStationsLoadSuccess implements ServiceStationsLoadSuccess {
  _$ServiceStationsLoadSuccess(
      {required final List<StationDto> stations,
      required this.showLocationPermissionWarning})
      : _stations = stations;

  final List<StationDto> _stations;
  @override
  List<StationDto> get stations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  final bool showLocationPermissionWarning;

  @override
  String toString() {
    return 'ServiceStationsState.success(stations: $stations, showLocationPermissionWarning: $showLocationPermissionWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceStationsLoadSuccess &&
            const DeepCollectionEquality().equals(other._stations, _stations) &&
            const DeepCollectionEquality().equals(
                other.showLocationPermissionWarning,
                showLocationPermissionWarning));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stations),
      const DeepCollectionEquality().hash(showLocationPermissionWarning));

  @JsonKey(ignore: true)
  @override
  _$$ServiceStationsLoadSuccessCopyWith<_$ServiceStationsLoadSuccess>
      get copyWith => __$$ServiceStationsLoadSuccessCopyWithImpl<
          _$ServiceStationsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)
        success,
    required TResult Function() failure,
  }) {
    return success(stations, showLocationPermissionWarning);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
  }) {
    return success?.call(stations, showLocationPermissionWarning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(stations, showLocationPermissionWarning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceStationsLoadInProgress value) loading,
    required TResult Function(ServiceStationsLoadSuccess value) success,
    required TResult Function(ServiceStationsLoadFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServiceStationsLoadInProgress value)? loading,
    TResult Function(ServiceStationsLoadSuccess value)? success,
    TResult Function(ServiceStationsLoadFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceStationsLoadInProgress value)? loading,
    TResult Function(ServiceStationsLoadSuccess value)? success,
    TResult Function(ServiceStationsLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ServiceStationsLoadSuccess implements ServiceStationsState {
  factory ServiceStationsLoadSuccess(
          {required final List<StationDto> stations,
          required final bool showLocationPermissionWarning}) =
      _$ServiceStationsLoadSuccess;

  List<StationDto> get stations => throw _privateConstructorUsedError;
  bool get showLocationPermissionWarning => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ServiceStationsLoadSuccessCopyWith<_$ServiceStationsLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceStationsLoadFailureCopyWith<$Res> {
  factory _$$ServiceStationsLoadFailureCopyWith(
          _$ServiceStationsLoadFailure value,
          $Res Function(_$ServiceStationsLoadFailure) then) =
      __$$ServiceStationsLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceStationsLoadFailureCopyWithImpl<$Res>
    extends _$ServiceStationsStateCopyWithImpl<$Res>
    implements _$$ServiceStationsLoadFailureCopyWith<$Res> {
  __$$ServiceStationsLoadFailureCopyWithImpl(
      _$ServiceStationsLoadFailure _value,
      $Res Function(_$ServiceStationsLoadFailure) _then)
      : super(_value, (v) => _then(v as _$ServiceStationsLoadFailure));

  @override
  _$ServiceStationsLoadFailure get _value =>
      super._value as _$ServiceStationsLoadFailure;
}

/// @nodoc

class _$ServiceStationsLoadFailure implements ServiceStationsLoadFailure {
  _$ServiceStationsLoadFailure();

  @override
  String toString() {
    return 'ServiceStationsState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceStationsLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)
        success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<StationDto> stations, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServiceStationsLoadInProgress value) loading,
    required TResult Function(ServiceStationsLoadSuccess value) success,
    required TResult Function(ServiceStationsLoadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServiceStationsLoadInProgress value)? loading,
    TResult Function(ServiceStationsLoadSuccess value)? success,
    TResult Function(ServiceStationsLoadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServiceStationsLoadInProgress value)? loading,
    TResult Function(ServiceStationsLoadSuccess value)? success,
    TResult Function(ServiceStationsLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ServiceStationsLoadFailure implements ServiceStationsState {
  factory ServiceStationsLoadFailure() = _$ServiceStationsLoadFailure;
}
