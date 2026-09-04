import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices({required this.dio});

  Future<WeatherModel> getWeather(String location ) async {
    Response response = await dio.get(
      "http://api.weatherapi.com/v1/forecast.json?key=725eb5e780ab401e82f173353263108&q=$location&days=1#",
    );

    WeatherModel weathermodel = WeatherModel.fromJson(response.data);
    return weathermodel;

    
  }
}
