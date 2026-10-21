import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/widget/theme_color.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [themeColor(weatherModel.condition).shade100, themeColor(weatherModel.condition).shade800],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${weatherModel.location}°",
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16),
          Image.network("https:${weatherModel.imageUrl}"),
          Text(
            "${weatherModel.avgTemp}°",
            style: TextStyle(
              color: Colors.black,
              fontSize: 64,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16),
          Text(
            weatherModel.condition,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.47,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Max: ${weatherModel.maxTemp}°   Min: ${weatherModel.minTemp}°",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.47,
            ),
          ),
          SizedBox(height: 16),
          Image.asset("assets/house.png"),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Today",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.47,
                ),
              ),
              SizedBox(width: 100),
              Text(
                "${weatherModel.lastUpdated.hour} : ${weatherModel.lastUpdated.minute}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.47,
                ),
              ),
            ],
          ),
          Divider(
            thickness: .4,
            endIndent: 16,
            indent: 16,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
