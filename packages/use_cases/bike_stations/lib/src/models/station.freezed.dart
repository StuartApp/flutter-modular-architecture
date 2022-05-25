// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Station {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get emptySlots => throw _privateConstructorUsedError;
  int get freeNormalBikes => throw _privateConstructorUsedError;
  int get freeEBikes => throw _privateConstructorUsedError;
  LatLng get location => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int emptySlots,
      int freeNormalBikes,
      int freeEBikes,
      LatLng location,
      bool isFavorite});
}

/// @nodoc
class _$StationCopyWithImpl<$Res> implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  final Station _value;
  // ignore: unused_field
  final $Res Function(Station) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emptySlots = freezed,
    Object? freeNormalBikes = freezed,
    Object? freeEBikes = freezed,
    Object? location = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emptySlots: emptySlots == freezed
          ? _value.emptySlots
          : emptySlots // ignore: cast_nullable_to_non_nullable
              as int,
      freeNormalBikes: freeNormalBikes == freezed
          ? _value.freeNormalBikes
          : freeNormalBikes // ignore: cast_nullable_to_non_nullable
              as int,
      freeEBikes: freeEBikes == freezed
          ? _value.freeEBikes
          : freeEBikes // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_StationCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$_StationCopyWith(
          _$_Station value, $Res Function(_$_Station) then) =
      __$$_StationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int emptySlots,
      int freeNormalBikes,
      int freeEBikes,
      LatLng location,
      bool isFavorite});
}

/// @nodoc
class __$$_StationCopyWithImpl<$Res> extends _$StationCopyWithImpl<$Res>
    implements _$$_StationCopyWith<$Res> {
  __$$_StationCopyWithImpl(_$_Station _value, $Res Function(_$_Station) _then)
      : super(_value, (v) => _then(v as _$_Station));

  @override
  _$_Station get _value => super._value as _$_Station;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emptySlots = freezed,
    Object? freeNormalBikes = freezed,
    Object? freeEBikes = freezed,
    Object? location = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_Station(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emptySlots: emptySlots == freezed
          ? _value.emptySlots
          : emptySlots // ignore: cast_nullable_to_non_nullable
              as int,
      freeNormalBikes: freeNormalBikes == freezed
          ? _value.freeNormalBikes
          : freeNormalBikes // ignore: cast_nullable_to_non_nullable
              as int,
      freeEBikes: freeEBikes == freezed
          ? _value.freeEBikes
          : freeEBikes // ignore: cast_nullable_to_non_nullable
              as int,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Station extends _Station {
  const _$_Station(
      {required this.id,
      required this.name,
      required this.emptySlots,
      required this.freeNormalBikes,
      required this.freeEBikes,
      required this.location,
      required this.isFavorite})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final int emptySlots;
  @override
  final int freeNormalBikes;
  @override
  final int freeEBikes;
  @override
  final LatLng location;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'Station(id: $id, name: $name, emptySlots: $emptySlots, freeNormalBikes: $freeNormalBikes, freeEBikes: $freeEBikes, location: $location, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Station &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.emptySlots, emptySlots) &&
            const DeepCollectionEquality()
                .equals(other.freeNormalBikes, freeNormalBikes) &&
            const DeepCollectionEquality()
                .equals(other.freeEBikes, freeEBikes) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(emptySlots),
      const DeepCollectionEquality().hash(freeNormalBikes),
      const DeepCollectionEquality().hash(freeEBikes),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$$_StationCopyWith<_$_Station> get copyWith =>
      __$$_StationCopyWithImpl<_$_Station>(this, _$identity);
}

abstract class _Station extends Station {
  const factory _Station(
      {required final String id,
      required final String name,
      required final int emptySlots,
      required final int freeNormalBikes,
      required final int freeEBikes,
      required final LatLng location,
      required final bool isFavorite}) = _$_Station;
  const _Station._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get emptySlots => throw _privateConstructorUsedError;
  @override
  int get freeNormalBikes => throw _privateConstructorUsedError;
  @override
  int get freeEBikes => throw _privateConstructorUsedError;
  @override
  LatLng get location => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StationCopyWith<_$_Station> get copyWith =>
      throw _privateConstructorUsedError;
}
