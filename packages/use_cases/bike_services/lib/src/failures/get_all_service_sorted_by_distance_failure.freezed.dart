// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_all_service_sorted_by_distance_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetAllServiceSortedByDistanceFailure {
  Object get cause => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object cause) network,
    required TResult Function(Object cause) permission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object cause)? network,
    TResult Function(Object cause)? permission,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_Permission value) permission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_Permission value)? permission,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_Network implements _Network {
  _$_Network(this.cause);

  @override
  final Object cause;

  @override
  String toString() {
    return 'GetAllServiceSortedByDistanceFailure.network(cause: $cause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Network &&
            const DeepCollectionEquality().equals(other.cause, cause));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cause));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object cause) network,
    required TResult Function(Object cause) permission,
  }) {
    return network(cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object cause)? network,
    TResult Function(Object cause)? permission,
  }) {
    return network?.call(cause);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_Permission value) permission,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_Permission value)? permission,
  }) {
    return network?.call(this);
  }
}

abstract class _Network
    implements GetAllServiceSortedByDistanceFailure, NetworkFailure {
  factory _Network(final Object cause) = _$_Network;

  @override
  Object get cause => throw _privateConstructorUsedError;
}

/// @nodoc

class _$_Permission implements _Permission {
  _$_Permission(this.cause);

  @override
  final Object cause;

  @override
  String toString() {
    return 'GetAllServiceSortedByDistanceFailure.permission(cause: $cause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Permission &&
            const DeepCollectionEquality().equals(other.cause, cause));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cause));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object cause) network,
    required TResult Function(Object cause) permission,
  }) {
    return permission(cause);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Object cause)? network,
    TResult Function(Object cause)? permission,
  }) {
    return permission?.call(cause);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Network value) network,
    required TResult Function(_Permission value) permission,
  }) {
    return permission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Network value)? network,
    TResult Function(_Permission value)? permission,
  }) {
    return permission?.call(this);
  }
}

abstract class _Permission
    implements GetAllServiceSortedByDistanceFailure, PermissionFailure {
  factory _Permission(final Object cause) = _$_Permission;

  @override
  Object get cause => throw _privateConstructorUsedError;
}
