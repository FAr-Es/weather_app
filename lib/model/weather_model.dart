class WeatherModel {
  final String location;
  final String lastUpdated;
  final double maxTemp;
  final double minTemp;
  final double avgTemp;
  final String condition;
  final String? imageUrl;

  WeatherModel({
    required this.location,
    required this.lastUpdated,
    required this.maxTemp,
    required this.minTemp,
    required this.avgTemp,
    required this.condition,
    this.imageUrl,
  });

  factory WeatherModel.fromJson(json){
    return WeatherModel(
      location : json['location']['name'],
      lastUpdated : json['current']['last_updated'],
      maxTemp : json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp : json['forecast']['forecastday'][0]['day']['mintemp_c'],
      avgTemp : json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      condition : json['current']['condition']['text'],
      imageUrl : json['current']['condition']['icon'] ?? "",
    );
}}
 