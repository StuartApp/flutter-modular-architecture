import 'dart:async';

import 'package:distance/distance.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dtos/station_dto.dart';
import 'event.dart';
import 'state.dart';

class ServiceStationsBloc
    extends Bloc<ServiceStationsEvent, ServiceStationsState> {
  ServiceStationsBloc() : super(ServiceStationsState.loading()) {
    on<ServiceStationsStarted>((event, emit) async {
      await _loadServices(emit);
    });

    on<ServiceStationsReloadPressed>((event, emit) async {
      emit(ServiceStationsState.loading());
      await _loadServices(emit);
    });
  }

  Future<void> _loadServices(Emitter<ServiceStationsState> emit) async {
    await Future.delayed(const Duration(seconds: 2), () {
      emit(ServiceStationsState.success(
        stations: _stations,
        showLocationPermissionWarning: false,
      ));
    });
  }
}

const _stations = [
  StationDto(
    id: 'e02c5db9e6f6fca078798c9b2d486a81',
    name: 'Jardins De Can Ferrero/Pg.De La Zona Franca',
    emptySlots: 22,
    freeBikes: 9,
    freeNormalBikes: 2,
    freeEBikes: 7,
    distance: Distance(meters: 50),
    isFavorite: false,
  ),
  StationDto(
    id: 'f8756b6af18c2fedd8a295040279aecc',
    name: 'Pl. Poeta Boscà/Atlàntida',
    emptySlots: 0,
    freeBikes: 22,
    freeNormalBikes: 12,
    freeEBikes: 10,
    distance: Distance(meters: 176),
    isFavorite: true,
  ),
  StationDto(
    id: 'dc04b4e3cdc44b9f8138c24836c54d4f',
    name: 'C/ Doctor Aiguader, 2',
    emptySlots: 2,
    freeBikes: 16,
    freeNormalBikes: 4,
    freeEBikes: 13,
    distance: Distance(meters: 1133),
    isFavorite: false,
  ),
];
