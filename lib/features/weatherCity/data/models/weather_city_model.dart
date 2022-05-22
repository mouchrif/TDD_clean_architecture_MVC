// Project imports:
import 'package:clean_architecture_example/features/weatherCity/domain/entities/weather_city_entity.dart';

class WeatherCityModel extends WeatherCityEntity {
  const WeatherCityModel(
      {required String name,
      required Weather weather,
      required Map<String, dynamic> main,
      required Map<String, dynamic> wind,
      required Map<String, dynamic> sys,
      required int visibility,
      required Map<String, dynamic> clouds})
      : super(name: name, weather: weather, main: main, wind: wind, sys: sys, visibility: visibility, clouds: clouds);

  factory WeatherCityModel.fromJson(Map<String, dynamic> json) =>
      WeatherCityModel(
          name: json['name'],
          weather: Weather.fromJson(json['weather'][0]),
          main: json['main'],
          wind: json['wind'],
          sys: json['sys'], 
          visibility: json['visibility'],
          clouds: json['clouds'], 
      );

  // Map<String, dynamic> toJson(WeatherCityModel weatherCityModel) => {
  //       "name": weatherCityModel.name,
  //       "weather": weatherCityModel.weather,
  //       "main": weatherCityModel.main,
  //       "wind": weatherCityModel.wind,
  //       "sys": weatherCityModel.sys,
  //     };
}

class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon']);
}
