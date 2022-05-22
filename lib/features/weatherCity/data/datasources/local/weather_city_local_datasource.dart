// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:clean_architecture_example/features/weatherCity/data/models/weather_city_model.dart';

abstract class WeatherCityLocalDataSource {
  // Future<WeatherCityModel> getLastWeatherCity();
  Future<void> cachWeatherCity(WeatherCityModel weatherCityModel);
}

@LazySingleton(as: WeatherCityLocalDataSource)
class WeatherCityLocalDataSourceImpl implements WeatherCityLocalDataSource {
  @override
  Future<void> cachWeatherCity(WeatherCityModel weatherCityModel) {
    return Future.value();
  }

  // @override
  // Future<WeatherCityModel> getLastWeatherCity() {
  //   Future.value(null);
  // }
}
