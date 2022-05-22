// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:clean_architecture_example/features/weatherCity/data/models/weather_city_model.dart';

class WeatherCityEntity extends Equatable {
  final String name;
  final Weather weather;
  final Map<String, dynamic> main;
  final Map<String, dynamic> wind;
  final Map<String, dynamic> sys;
  final int visibility;
  final Map<String, dynamic> clouds;

  const WeatherCityEntity({
    required this.name,
    required this.weather,
    required this.main,
    required this.wind,
    required this.sys,
    required this.visibility, 
    required this.clouds,
  });

  @override
  List<Object?> get props => [name, weather, main, wind, sys, visibility, clouds];
}
