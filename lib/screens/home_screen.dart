import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/widget/no_weather_available.dart';
import 'package:weather_app/widget/weather_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Weathery",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchScreen();
                    },
                  ),
                );
              },
              icon: Icon(Icons.search_rounded, color: Colors.white),
            ),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: BlocBuilder(builder: (context, state) {
        if(state is WeatherLoadingState){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(state is WeatherInintialState){
          return NoWeatherAvailable();
        }
        else if(state is WeatherLoadedState){
          return WeatherDetails(weatherModel: state.weatherModel,);
        }
        else{
          return Center(child: Text("There is an error.."),);
        }
      },)
    );
  }
}
