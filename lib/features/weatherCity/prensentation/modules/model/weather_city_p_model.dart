// Project imports:
import 'package:clean_architecture_example/features/weatherCity/data/models/weather_city_model.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/entities/weather_city_entity.dart';

class WeatherCityPmodel extends WeatherCityEntity{
  const WeatherCityPmodel({
    required String name, 
    required Weather weather, 
    required Map<String, dynamic> main, 
    required Map<String, dynamic> wind, 
    required Map<String, dynamic> sys,
    required int visibility,
    required Map<String, dynamic> clouds}) : super(
      name: name, 
      weather: weather, 
      main: main, 
      wind: wind, 
      sys: sys,
      visibility: visibility,
      clouds: clouds);

}
