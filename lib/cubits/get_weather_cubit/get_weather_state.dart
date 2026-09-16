import 'package:weather_app/model/weather_model.dart';

class WeatherState {}

class WeatherInintialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {}

class WeatherLoadingState extends WeatherState {}