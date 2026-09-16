import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInintialState());

  getWeather({required String value}) async {
    try {
      emit(WeatherLoadingState());
      WeatherModel weatherModel = await WeatherServices(
        dio: Dio(),
      ).getWeather(location: value);

      emit(WeatherLoadedState(weatherModel));
    } catch (e) {
      emit(WeatherFailureState());
    }
    
  }
}
