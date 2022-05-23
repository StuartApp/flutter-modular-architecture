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
mixin _$NearServicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ServiceDto> services, bool showLocationPermissionWarning)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ServiceDto> services, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ServiceDto> services, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceSelectorLoadInProgress value) loading,
    required TResult Function(ServiceSelectorLoadSuccess value) success,
    required TResult Function(ServiceSelectorLoadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceSelectorLoadInProgress value)? loading,
    TResult Function(ServiceSelectorLoadSuccess value)? success,
    TResult Function(ServiceSelectorLoadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceSelectorLoadInProgress value)? loading,
    TResult Function(ServiceSelectorLoadSuccess value)? success,
    TResult Function(ServiceSelectorLoadFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearServicesStateCopyWith<$Res> {
  factory $NearServicesStateCopyWith(
          NearServicesState value, $Res Function(NearServicesState) then) =
      _$NearServicesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NearServicesStateCopyWithImpl<$Res>
    implements $NearServicesStateCopyWith<$Res> {
  _$NearServicesStateCopyWithImpl(this._value, this._then);

  final NearServicesState _value;
  // ignore: unused_field
  final $Res Function(NearServicesState) _then;
}

/// @nodoc
abstract class _$$ServiceSelectorLoadInProgressCopyWith<$Res> {
  factory _$$ServiceSelectorLoadInProgressCopyWith(
          _$ServiceSelectorLoadInProgress value,
          $Res Function(_$ServiceSelectorLoadInProgress) then) =
      __$$ServiceSelectorLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceSelectorLoadInProgressCopyWithImpl<$Res>
    extends _$NearServicesStateCopyWithImpl<$Res>
    implements _$$ServiceSelectorLoadInProgressCopyWith<$Res> {
  __$$ServiceSelectorLoadInProgressCopyWithImpl(
      _$ServiceSelectorLoadInProgress _value,
      $Res Function(_$ServiceSelectorLoadInProgress) _then)
      : super(_value, (v) => _then(v as _$ServiceSelectorLoadInProgress));

  @override
  _$ServiceSelectorLoadInProgress get _value =>
      super._value as _$ServiceSelectorLoadInProgress;
}

/// @nodoc

class _$ServiceSelectorLoadInProgress implements ServiceSelectorLoadInProgress {
  _$ServiceSelectorLoadInProgress();

  @override
  String toString() {
    return 'NearServicesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSelectorLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ServiceDto> services, bool showLocationPermissionWarning)
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
            List<ServiceDto> services, bool showLocationPermissionWarning)?
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
            List<ServiceDto> services, bool showLocationPermissionWarning)?
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
    required TResult Function(ServiceSelectorLoadInProgress value) loading,
    required TResult Function(ServiceSelectorLoadSuccess value) success,
    required TResult Function(ServiceSelectorLoadFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceSelectorLoadInProgress value)? loading,
    TResult Function(ServiceSelectorLoadSuccess value)? success,
    TResult Function(ServiceSelectorLoadFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceSelectorLoadInProgress value)? loading,
    TResult Function(ServiceSelectorLoadSuccess value)? success,
    TResult Function(ServiceSelectorLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ServiceSelectorLoadInProgress implements NearServicesState {
  factory ServiceSelectorLoadInProgress() = _$ServiceSelectorLoadInProgress;
}

/// @nodoc
abstract class _$$ServiceSelectorLoadSuccessCopyWith<$Res> {
  factory _$$ServiceSelectorLoadSuccessCopyWith(
          _$ServiceSelectorLoadSuccess value,
          $Res Function(_$ServiceSelectorLoadSuccess) then) =
      __$$ServiceSelectorLoadSuccessCopyWithImpl<$Res>;
  $Res call({List<ServiceDto> services, bool showLocationPermissionWarning});
}

/// @nodoc
class __$$ServiceSelectorLoadSuccessCopyWithImpl<$Res>
    extends _$NearServicesStateCopyWithImpl<$Res>
    implements _$$ServiceSelectorLoadSuccessCopyWith<$Res> {
  __$$ServiceSelectorLoadSuccessCopyWithImpl(
      _$ServiceSelectorLoadSuccess _value,
      $Res Function(_$ServiceSelectorLoadSuccess) _then)
      : super(_value, (v) => _then(v as _$ServiceSelectorLoadSuccess));

  @override
  _$ServiceSelectorLoadSuccess get _value =>
      super._value as _$ServiceSelectorLoadSuccess;

  @override
  $Res call({
    Object? services = freezed,
    Object? showLocationPermissionWarning = freezed,
  }) {
    return _then(_$ServiceSelectorLoadSuccess(
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceDto>,
      showLocationPermissionWarning: showLocationPermissionWarning == freezed
          ? _value.showLocationPermissionWarning
          : showLocationPermissionWarning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceSelectorLoadSuccess implements ServiceSelectorLoadSuccess {
  _$ServiceSelectorLoadSuccess(
      {required final List<ServiceDto> services,
      required this.showLocationPermissionWarning})
      : _services = services;

  final List<ServiceDto> _services;
  @override
  List<ServiceDto> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  final bool showLocationPermissionWarning;

  @override
  String toString() {
    return 'NearServicesState.success(services: $services, showLocationPermissionWarning: $showLocationPermissionWarning)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSelectorLoadSuccess &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(
                other.showLocationPermissionWarning,
                showLocationPermissionWarning));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(showLocationPermissionWarning));

  @JsonKey(ignore: true)
  @override
  _$$ServiceSelectorLoadSuccessCopyWith<_$ServiceSelectorLoadSuccess>
      get copyWith => __$$ServiceSelectorLoadSuccessCopyWithImpl<
          _$ServiceSelectorLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ServiceDto> services, bool showLocationPermissionWarning)
        success,
    required TResult Function() failure,
  }) {
    return success(services, showLocationPermissionWarning);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ServiceDto> services, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
  }) {
    return success?.call(services, showLocationPermissionWarning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<ServiceDto> services, bool showLocationPermissionWarning)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(services, showLocationPermissionWarning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceSelectorLoadInProgress value) loading,
    required TResult Function(ServiceSelectorLoadSuccess value) success,
    required TResult Function(ServiceSelectorLoadFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceSelectorLoadInProgress value)? loading,
    TResult Function(ServiceSelectorLoadSuccess value)? success,
    TResult Function(ServiceSelectorLoadFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceSelectorLoadInProgress value)? loading,
    TResult Function(ServiceSelectorLoadSuccess value)? success,
    TResult Function(ServiceSelectorLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ServiceSelectorLoadSuccess implements NearServicesState {
  factory ServiceSelectorLoadSuccess(
          {required final List<ServiceDto> services,
          required final bool showLocationPermissionWarning}) =
      _$ServiceSelectorLoadSuccess;

  List<ServiceDto> get services => throw _privateConstructorUsedError;
  bool get showLocationPermissionWarning => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ServiceSelectorLoadSuccessCopyWith<_$ServiceSelectorLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceSelectorLoadFailureCopyWith<$Res> {
  factory _$$ServiceSelectorLoadFailureCopyWith(
          _$ServiceSelectorLoadFailure value,
          $Res Function(_$ServiceSelectorLoadFailure) then) =
      __$$ServiceSelectorLoadFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceSelectorLoadFailureCopyWithImpl<$Res>
    extends _$NearServicesStateCopyWithImpl<$Res>
    implements _$$ServiceSelectorLoadFailureCopyWith<$Res> {
  __$$ServiceSelectorLoadFailureCopyWithImpl(
      _$ServiceSelectorLoadFailure _value,
      $Res Function(_$ServiceSelectorLoadFailure) _then)
      : super(_value, (v) => _then(v as _$ServiceSelectorLoadFailure));

  @override
  _$ServiceSelectorLoadFailure get _value =>
      super._value as _$ServiceSelectorLoadFailure;
}

/// @nodoc

class _$ServiceSelectorLoadFailure implements ServiceSelectorLoadFailure {
  _$ServiceSelectorLoadFailure();

  @override
  String toString() {
    return 'NearServicesState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSelectorLoadFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<ServiceDto> services, bool showLocationPermissionWarning)
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
            List<ServiceDto> services, bool showLocationPermissionWarning)?
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
            List<ServiceDto> services, bool showLocationPermissionWarning)?
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
    required TResult Function(ServiceSelectorLoadInProgress value) loading,
    required TResult Function(ServiceSelectorLoadSuccess value) success,
    required TResult Function(ServiceSelectorLoadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServiceSelectorLoadInProgress value)? loading,
    TResult Function(ServiceSelectorLoadSuccess value)? success,
    TResult Function(ServiceSelectorLoadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceSelectorLoadInProgress value)? loading,
    TResult Function(ServiceSelectorLoadSuccess value)? success,
    TResult Function(ServiceSelectorLoadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ServiceSelectorLoadFailure implements NearServicesState {
  factory ServiceSelectorLoadFailure() = _$ServiceSelectorLoadFailure;
}
