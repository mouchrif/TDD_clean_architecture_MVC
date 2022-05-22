// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:clean_architecture_example/core/errors/failures.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/entities/weather_city_entity.dart';

abstract class WeatherCityRepository {
  Future<Either<Failure, WeatherCityEntity>> getWeatherCity(String cityName);
}


