import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'dtos/service_dto.dart';

abstract class ServiceApiDataSource {
  Future<List<ServiceDto>> getAllServices();
}

class ServiceApiDataSourceImpl implements ServiceApiDataSource {
  @override
  Future<List<ServiceDto>> getAllServices() async {
    final url = Uri.parse('http://api.citybik.es/v2/networks');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final networks = json['networks'] as List<dynamic>;
      return networks.map((network) {
        return ServiceDto.fromJson(network as Map<String, dynamic>);
      }).toList();
    } else {
      throw HttpException('HTTP status code ${response.statusCode}');
    }
  }
}
