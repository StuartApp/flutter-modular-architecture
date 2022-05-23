import 'dart:async';
import 'dart:developer';

import 'package:_bike_services_use_cases/bike_services_use_cases.dart';
import 'package:_location_use_cases/location_use_cases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../mappers/service_mapper.dart';
import 'event.dart';
import 'state.dart';

class NearServicesBloc extends Bloc<NearServicesEvent, NearServicesState> {
  final GetAllServicesSortedByDistance _getAllServicesSortedByDistance;

  final GetAllServices _getAllServices;

  final AskLocationPermission _askLocationPermission;

  NearServicesBloc(
    this._getAllServicesSortedByDistance,
    this._getAllServices,
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

  Future<void> _loadServices(Emitter<NearServicesState> emit) async {
    await _askLocationPermission();

    final result = await _getAllServicesSortedByDistance();
    await result.fold<Future<void>?>(
      (failure) {
        log(failure.cause.toString(), name: 'NearServicesBloc', error: failure);
        return failure.map(
          permission: (failure) {
            return _loadFallbackServices(emit);
          },
          network: (failure) {
            emit(NearServicesState.failure());
            return null;
          },
        );
      },
      (services) {
        final serviceDtos =
            services.map((service) => service.toServiceDto()).toList();
        emit(NearServicesState.success(
          services: serviceDtos,
          showLocationPermissionWarning: false,
        ));
        return null;
      },
    );
  }

  Future<void> _loadFallbackServices(Emitter<NearServicesState> emit) async {
    final result = await _getAllServices();
    result.fold(
      (failure) {
        log(failure.cause.toString(), name: 'NearServicesBloc', error: failure);
        emit(NearServicesState.failure());
      },
      (services) {
        final serviceDtos =
            services.map((service) => service.toServiceDto()).toList();
        emit(NearServicesState.success(
          services: serviceDtos,
          showLocationPermissionWarning: true,
        ));
      },
    );
  }
}
