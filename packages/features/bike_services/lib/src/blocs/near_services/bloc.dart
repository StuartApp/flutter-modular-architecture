import 'dart:async';

import 'package:_bike_services_use_cases/bike_services_use_cases.dart';
import 'package:_location_use_cases/location_use_cases.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../mappers/service_mapper.dart';
import 'event.dart';
import 'state.dart';

class NearServicesBloc extends Bloc<NearServicesEvent, NearServicesState> {
  final GetAllServicesSortedByDistance _getAllServicesSortedByDistance;

  final AskLocationPermission _askLocationPermission;

  NearServicesBloc(
    this._getAllServicesSortedByDistance,
    this._askLocationPermission,
  ) : super(NearServicesState.loading()) {
    on<NearServicesStarted>((event, emit) async {
      await _loadServices(emit);
    });

    on<NearServicesReloadPressed>((event, emit) async {
      emit(NearServicesState.loading());
      await _loadServices(emit);
    });
  }

  Future<void> _loadServices(Emitter<NearServicesState> emit) {
    return _askLocationPermission().then((_) {
      return _getAllServicesSortedByDistance().fold(
        (failure) => emit(NearServicesState.failure()),
        (response) {
          final serviceDtos = response.services
              .map((service) => service.toServiceDto())
              .toList();
          emit(NearServicesState.success(
            services: serviceDtos,
            showLocationPermissionWarning: response.sortedFrom == null,
          ));
        },
      );
    });
  }
}
