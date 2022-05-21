import 'package:_intent_launcher/intent_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation_intents.dart';
import '../blocs/near_services/bloc.dart';
import '../blocs/near_services/event.dart';
import '../blocs/near_services/state.dart';

class ServiceSelectorPage extends StatelessWidget {
  const ServiceSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return NearServicesBloc()..add(NearServicesStarted());
      },
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.directions_bike),
          title: const Text('Bici'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Welcome to Bici!',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(height: 32.0),
              Expanded(
                child: BlocBuilder<NearServicesBloc, NearServicesState>(
                  builder: (BuildContext context, state) {
                    return state.map(
                      loading: (state) => _buildStateLoading(context),
                      success: (state) => _buildStateSuccess(context, state),
                      failure: (state) => _buildStateFailure(context),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStateLoading(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildStateSuccess(
    BuildContext context,
    ServiceSelectorLoadSuccess state,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Please, select a bike service:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16.0),
        Expanded(
          child: Material(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final service = state.services[index];
                return ListTile(
                  title: Text(service.cityName),
                  subtitle: Text(service.serviceName),
                  onTap: () => context.go(const BikeServiceStations()),
                );
              },
              itemCount: state.services.length,
            ),
          ),
        ),
      ],
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
                  .read<NearServicesBloc>()
                  .add(NearServicesReloadPressed());
            },
            child: const Text('Reload'),
          ),
        ],
      ),
    );
  }
}
