// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:clean_architecture_example/core/constants/strings/constants.dart';
import 'package:clean_architecture_example/core/errors/exceptions.dart';
import 'package:clean_architecture_example/features/weatherCity/data/models/weather_city_model.dart';

abstract class WeatherCityRemoteDataSource {
  Future<WeatherCityModel> getWeatherCity(String cityName);
}

@LazySingleton(as: WeatherCityRemoteDataSource)
class WeatherCityRemoteDataSourceImpl implements WeatherCityRemoteDataSource {
  final http.Client client;
  WeatherCityRemoteDataSourceImpl(this.client);
  @override
  Future<WeatherCityModel> getWeatherCity(String cityName) => _getWeatherCityFromUrl(cityName);

  Future<WeatherCityModel> _getWeatherCityFromUrl(String cityName) async {
    final String url = "$BASE_URL?q=$cityName&appid=$WEATHER_API_KEY&units=metric&lang=en";
    final response = await client.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
    });
    if (response.statusCode == 200) {
      try {
        return WeatherCityModel.fromJson(json.decode(response.body));
      } on FormatException {
        throw FormatDataException();
      }
    } else {
      throw ServerException();
    }
  }
}
