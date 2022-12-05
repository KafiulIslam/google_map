import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
//import 'package:flutter_gmaps/.env.dart';
import 'package:flutter_gmaps/directions_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DirectionsRepository {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio _dio;

  DirectionsRepository({Dio dio}) : _dio = dio ?? Dio();

  Future<Directions> getDirections({
    @required LatLng origin,
    @required LatLng destination,
  }) async {
    print('response is calling');
    final response = await _dio.get(
      _baseUrl,
      queryParameters: {
        'origin': '${origin.latitude},${origin.longitude}',
        'destination': '${destination.latitude},${destination.longitude}',
        'key': 'AIzaSyCaTZDsChyuLca-Ds-jd6K8KCA-4AkkTSk',
      },
    );

    // Check if response is successful
    if (response.statusCode == 200) {
      print('response is working ${response.data}');
      return Directions.fromMap(response.data);
    }
    print('response data is null');
    return null;
  }
}
