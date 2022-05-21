import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/service.dart';
import 'event.dart';
import 'state.dart';

class NearServicesBloc
    extends Bloc<NearServicesEvent, NearServicesState> {
  NearServicesBloc() : super(NearServicesState.loading()) {
    on<NearServicesStarted>((event, emit) async {
      await _loadServices(emit);
    });

    on<NearServicesReloadPressed>((event, emit) async {
      emit(NearServicesState.loading());
      await _loadServices(emit);
    });
  }

  Future<void> _loadServices(Emitter<NearServicesState> emit) {
    return Future.delayed(const Duration(seconds: 2), () {
      emit(NearServicesState.success(services: _services));
    });
  }
}

const _services = [
  Service(cityName: 'Barcelona', serviceName: 'Bicing'),
  Service(cityName: 'Albacete', serviceName: 'Onroll'),
  Service(cityName: 'Antequera', serviceName: 'Onroll'),
  Service(cityName: 'Bærum', serviceName: 'Bysykkel'),
  Service(cityName: 'Badajoz', serviceName: 'Onroll'),
  Service(cityName: 'Copenhagen', serviceName: 'Bycyklen'),
  Service(cityName: 'Moscow', serviceName: 'Velobike'),
  Service(cityName: 'Utrecht', serviceName: 'N-connect'),
  Service(cityName: 'Stavanger', serviceName: 'Bysykkelen'),
  Service(cityName: 'San Antonio, TX', serviceName: 'SWell Cycle'),
  Service(cityName: 'Tampa, FL', serviceName: 'Coast Bike Share'),
];
