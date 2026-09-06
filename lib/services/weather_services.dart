import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices({required this.dio});

  final String apiKey = "725eb5e780ab401e82f173353263108";
  final String baseUrl = "http://api.weatherapi.com/v1/";

  Future<WeatherModel> getWeather({required String location}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$location&days=1#",
      );

      WeatherModel weathermodel = WeatherModel.fromJson(response.data);
      return weathermodel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? "theres is an error";
          throw(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('There is an error');
    }
  }
}
