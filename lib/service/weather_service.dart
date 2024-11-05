import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'f459854ec8a24881a8e181846240411';

  WeatherService({required this.dio});

  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errMesage = e.response?.data['error']['message'] ??
          'Oops there was an erorr, try later';
      throw Exception(errMesage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops there was an erorr, try later');
    }
  }
}
