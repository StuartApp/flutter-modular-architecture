import 'dart:async';

import 'package:_bike_services_use_cases/bike_services_use_cases.dart';
import 'package:_location_use_cases/location_use_cases.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../mappers/service_mapper.dart';
import 'event.dart';
import 'state.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final GetAllServicesSortedByDistance _getAllServicesSortedByDistance;

  final AskLocationPermission _askLocationPermission;

  ServicesBloc(
    this._getAllServicesSortedByDistance,
    this._askLocationPermission,
  ) : super(ServicesState.loading()) {
    on<NearServicesStarted>((event, emit) async {
      await _loadServices(emit);
    });

    on<NearServicesReloadPressed>((event, emit) async {
      emit(ServicesState.loading());
      await _loadServices(emit);
    });
  }

  Future<void> _loadServices(Emitter<ServicesState> emit) {
    return _askLocationPermission().then((_) {
      return _getAllServicesSortedByDistance().fold(
        (failure) => emit(ServicesState.failure()),
        (response) {
          final serviceDtos = response.services
              .map((service) => service.toServiceDto())
              .toList();
          emit(ServicesState.success(
            services: serviceDtos,
            showLocationPermissionWarning: response.sortedFrom == null,
          ));
        },
      );
    });
  }
}
