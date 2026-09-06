import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/screens/search_screen.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3E2D8F), Color(0xFF9D52AC)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          //Image.network(weatherModel.imageUrl ?? ""),
          Text(
            "${weatherModel!.avgTemp}°",
            style: TextStyle(
              color: Colors.white,
              fontSize: 64,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 16),
          Text(
            weatherModel!.condition,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.47,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Max: ${weatherModel!.maxTemp}°   Min: ${weatherModel!.minTemp}°",
            style: TextStyle(
              color: Colors.white,
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
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.47,
                ),
              ),
              SizedBox(width: 100),
              Text(
                weatherModel!.lastUpdated,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.47,
                ),
              ),
            ],
          ),
          Divider(thickness: .4, endIndent: 16, indent: 16),
        ],
      ),
    );
  }
}
