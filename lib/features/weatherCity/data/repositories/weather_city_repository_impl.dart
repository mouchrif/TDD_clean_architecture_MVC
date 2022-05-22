// Package imports:
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:clean_architecture_example/core/errors/exceptions.dart';
import 'package:clean_architecture_example/core/errors/failures.dart';
import 'package:clean_architecture_example/core/network/network_info.dart';
import 'package:clean_architecture_example/features/weatherCity/data/datasources/local/weather_city_local_datasource.dart';
import 'package:clean_architecture_example/features/weatherCity/data/datasources/remote/weather_city_remote_datasource.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/entities/weather_city_entity.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/repositories/weather_city_repository.dart';

@LazySingleton(as: WeatherCityRepository)
class WeatherCityRepositoryImpl implements WeatherCityRepository {
  final NetworkInfo networkInfo;
  final WeatherCityRemoteDataSource remoteDataSource;
  final WeatherCityLocalDataSource localDataSource;

  WeatherCityRepositoryImpl(
      this.networkInfo, this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, WeatherCityEntity>> getWeatherCity(String cityName) async {
    if (await networkInfo.isConnected) {
      try {
        final weatherCityModel = await remoteDataSource.getWeatherCity(cityName);
        await localDataSource.cachWeatherCity(weatherCityModel);
        return Right(weatherCityModel);
      } on ServerException {
        return const Left(ServerFailure());
      } on FormatException {
        return const Left(FormatFailure());
      }
    } else {
      return const Left(OfflineFailure());
      // try {
      //   final weatherCityModel = await localDataSource.getLastWeatherCity();
      //   return Right(weatherCityModel);
      // } on EmptyCachException {
      //   return const Left(EmptyCachFailure());
      // }
    }
  }
}
