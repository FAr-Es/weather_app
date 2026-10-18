import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Search City",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async{
              BlocProvider.of<GetWeatherCubit>(context).getWeather(value: value);
              Navigator.pop(context);
            },
            autofocus: true,
            decoration: InputDecoration(
              labelText: "Search",
              labelStyle: TextStyle(color: Colors.grey[600]),
              suffixIcon: Icon(Icons.search),
              hintText: "Enter city name",
              hintStyle: TextStyle(color: Colors.grey[600]),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8)
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(8),), 
              ),
              
          ),
        ),
      ),
    );
  }
}

