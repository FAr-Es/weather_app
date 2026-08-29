import 'package:flutter/material.dart';

class NoWeatherAvailable extends StatelessWidget {
  const NoWeatherAvailable({super.key});

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
        child: const Center(
          child: Text(
            'No Weather Available yet!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      
    );
  }
}
