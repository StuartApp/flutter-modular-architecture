import 'package:flutter/material.dart';

class Service {
  final String cityName;
  final String  serviceName;

  const Service({
    required this.cityName,
    required this.serviceName,
  });
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

class ServiceSelectorPage extends StatelessWidget {
  const ServiceSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Text(
              'Please, select a bike service:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: Material(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final service = _services[index];
                    return ListTile(
                      title: Text(service.cityName),
                      subtitle: Text(service.serviceName),
                      onTap: () => Navigator.pushNamed(context, '/stations'),
                    );
                  },
                  itemCount: _services.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
