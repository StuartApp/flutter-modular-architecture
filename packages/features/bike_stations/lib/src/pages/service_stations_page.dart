import 'package:_core/core.dart';
import 'package:_intent_launcher/intent_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation_intents.dart';
import '../blocs/service_stations/bloc.dart';
import '../blocs/service_stations/event.dart';
import '../blocs/service_stations/state.dart';
import '../widgets/station_list_item.dart';

class ServiceStationsPage extends StatelessWidget {
  final String serviceId;

  const ServiceStationsPage({Key? key, required this.serviceId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ServiceStationsBloc(
        serviceId,
        inject(),
      )..add(ServiceStationsStarted()),
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBlocListener(
          child: _buildBody(),
        ),
      ),
    );
  }

  Widget _buildBlocListener({required Widget child}) {
    return BlocListener<ServiceStationsBloc, ServiceStationsState>(
      listener: (context, state) {
        state.maybeMap(
          success: (success) {
            if (success.showLocationPermissionWarning) {
              _showLocationPermissionWarning(context);
            }
          },
          orElse: () => null,
        );
      },
      child: child,
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Bicing stations'),
      actions: [
        IconButton(
          icon: const Icon(Icons.star),
          tooltip: 'Favorite stations',
          onPressed: () => context.go(const FavoriteBikeStations()),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<ServiceStationsBloc, ServiceStationsState>(
        builder: (context, state) {
          return state.map(
            loading: (state) => _buildStateLoading(context),
            success: (state) => _buildStateSuccess(context, state),
            failure: (state) => _buildStateFailure(context),
          );
        },
      ),
    );
  }

  Widget _buildStateLoading(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildStateSuccess(
      BuildContext context, ServiceStationsLoadSuccess state) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final station = state.stations[index];
        return StationListItem(station: station);
      },
      itemCount: state.stations.length,
    );
  }

  Widget _buildStateFailure(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('An unexpected network error occurred.'),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              context
                  .read<ServiceStationsBloc>()
                  .add(ServiceStationsReloadPressed());
            },
            child: const Text('Reload'),
          ),
        ],
      ),
    );
  }

  void _showLocationPermissionWarning(BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        'Please, enable location services and grant location permissions',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      backgroundColor: Theme.of(context).errorColor,
      duration: const Duration(seconds: 15),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
