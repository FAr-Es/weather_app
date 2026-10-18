import 'package:flutter/material.dart';

MaterialColor themeColor(String condition) {
  switch (condition.toLowerCase()) {
    // ☀️ Sunny weather
    case "sunny":
    case "clear":
      return Colors.amber;

    // 🌤️ Partly cloudy
    case "partly cloudy":
    case "patchy rain possible":
    case "patchy snow possible":
    case "patchy sleet possible":
    case "patchy freezing drizzle possible":
    case "thundery outbreaks possible":
      return Colors.lightBlue;

    // ☁️ Cloudy weather
    case "cloudy":
    case "overcast":
    case "mist":
    case "fog":
    case "freezing fog":
    case "smoke":
      return Colors.blueGrey;

    // 🌫️ Dust, haze and smog
    case "haze":
    case "dust haze":
    case "blowing dust":
    case "dust storm":
    case "sandstorm":
    case "severe sandstorm":
    case "smoky haze":
    case "smog":
    case "severe smog":
    case "saharan dust":
    case "dust":
      return Colors.brown;

    // 🌧️ Rain and drizzle
    case "patchy light drizzle":
    case "light drizzle":
    case "freezing drizzle":
    case "heavy freezing drizzle":
    case "patchy light rain":
    case "light rain":
    case "moderate rain at times":
    case "moderate rain":
    case "heavy rain at times":
    case "heavy rain":
    case "light freezing rain":
    case "moderate or heavy freezing rain":
    case "light rain shower":
    case "moderate or heavy rain shower":
    case "torrential rain shower":
      return Colors.blue;

    // 🌨️ Snow and blizzards
    case "blowing snow":
    case "blizzard":
    case "patchy light snow":
    case "light snow":
    case "patchy moderate snow":
    case "moderate snow":
    case "patchy heavy snow":
    case "heavy snow":
    case "light snow showers":
    case "moderate or heavy snow showers":
      return Colors.lightBlue;

    // 🌨️ Sleet and ice
    case "light sleet":
    case "moderate or heavy sleet":
    case "light sleet showers":
    case "moderate or heavy sleet showers":
    case "ice pellets":
    case "light showers of ice pellets":
    case "moderate or heavy showers of ice pellets":
      return Colors.cyan;

    // ⛈️ Thunderstorms
    case "patchy light rain with thunder":
    case "moderate or heavy rain with thunder":
    case "patchy light snow with thunder":
    case "moderate or heavy snow with thunder":
      return Colors.deepPurple;

    default:
      return Colors.blueGrey;
  }
}
