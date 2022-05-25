import 'dart:async';

import 'package:_bike_stations_use_cases/bike_stations_use_cases.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../mappers/station_mapper.dart';
import 'event.dart';
import 'state.dart';

class ServiceStationsBloc
    extends Bloc<ServiceStationsEvent, ServiceStationsState> {
  final String _serviceId;

  final GetServiceStationsSortedByDistance _getServiceStationsSortedByDistance;

  ServiceStationsBloc(
    this._serviceId,
    this._getServiceStationsSortedByDistance,
  ) : super(ServiceStationsState.loading()) {
    on<ServiceStationsStarted>((event, emit) async {
      await _loadServices(emit);
    });

    on<ServiceStationsReloadPressed>((event, emit) async {
      emit(ServiceStationsState.loading());
      await _loadServices(emit);
    });
  }

  Future<void> _loadServices(Emitter<ServiceStationsState> emit) {
    return _getServiceStationsSortedByDistance(_serviceId).fold(
      (left) => emit(ServiceStationsState.failure()),
      (response) {
        emit(ServiceStationsState.success(
          stations: response.stations
              .map((station) => station.toStationDto(response.sortedFrom))
              .toList(),
          showLocationPermissionWarning: response.sortedFrom == null,
        ));
      },
    );
  }
}
