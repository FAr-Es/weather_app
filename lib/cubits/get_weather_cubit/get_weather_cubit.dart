import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';
import 'package:weather_app/widget/no_weather_available.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialState());

  getWeather({required String value}) async {
    try {
      WeatherModel weatherModel = await WeatherServices(
        dio: Dio(),
      ).getWeather(location: value);

      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
    
  }
}
