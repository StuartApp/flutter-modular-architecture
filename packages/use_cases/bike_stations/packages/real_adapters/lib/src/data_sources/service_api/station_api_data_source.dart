import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'dtos/station_dto.dart';

abstract class StationApiDataSource {
  Future<List<StationDto>> getAllStations(String serviceId);
}

class StationApiDataSourceImpl implements StationApiDataSource {
  @override
  Future<List<StationDto>> getAllStations(String serviceId) async {
    final url = Uri.parse('http://api.citybik.es/v2/networks/$serviceId');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final stations = json['network']['stations'] as List<dynamic>;
      return stations.map((station) {
        return StationDto.fromJson(station as Map<String, dynamic>);
      }).toList();
    } else {
      throw HttpException('HTTP status code ${response.statusCode}');
    }
  }
}
