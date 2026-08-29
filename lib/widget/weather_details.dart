import 'package:flutter/material.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 54),
        child: Column(
          children: [
            Image.asset("assets/weather.png"),
            Text(
              "19°",
              style: TextStyle(
                color: Colors.white,
                fontSize: 64,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Precipitations",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.47,
              ),
            ),
            Text(
              "Max: 12°   Min: 13°",
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Text(
                  "Jul, 21",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.47,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
