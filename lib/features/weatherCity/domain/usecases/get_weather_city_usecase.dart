// Package imports:
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:clean_architecture_example/core/errors/failures.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/entities/weather_city_entity.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/repositories/weather_city_repository.dart';

@injectable
class GetWeatherCityUseCase {
  final WeatherCityRepository repository;
  GetWeatherCityUseCase(this.repository);

  Future<Either<Failure, WeatherCityEntity>> call(String cityName) async {
    return await repository.getWeatherCity(cityName);
  }
}
