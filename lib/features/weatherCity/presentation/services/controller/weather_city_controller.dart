// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:clean_architecture_example/core/constants/strings/constants.dart';
import 'package:clean_architecture_example/core/errors/error_entity.dart';
import 'package:clean_architecture_example/core/stats/page_stats.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/entities/weather_city_entity.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/usecases/get_weather_city_usecase.dart';
import 'package:clean_architecture_example/features/weatherCity/presentation/services/model/weather_city_p_model.dart';

@injectable
class WeatherCityController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    textController = TextEditingController();
    await _getWeatherCity(CITY_NAME);
  }

  final GetWeatherCityUseCase weatherCityUseCase;
  final ErrorEntity errorEntity;
  WeatherCityController({
    required this.weatherCityUseCase,
    required this.errorEntity,
  });

  late final GlobalKey<FormState> keyTextField = GlobalKey<FormState>();
  late final TextEditingController textController;
  // WeatherCityPmodel? _weatherCity ;
  // late final ErrorEntity _errorObject;
  var pageStat = const PageStats.initial().obs;
  // var pageStat = <PageStats>(PageStats.loading());
  String _cityNameInput = '';
  final _isDay = true.obs;

  // WeatherCityEntity get weatherCity => _weatherCity;
  // ErrorEntity get errorObject => _errorObject;
  String get cityNameInput => _cityNameInput;
  bool get isDay => _isDay.value;

  // void onChanged(String city) {
  //   _cityNameInput = city;
  // }

  String? validateCityName(String cityName) {
    if (cityName.isEmpty) {
      return EMPTY_CITY_NAME;
    } else if (!GetUtils.isUsername(cityName)) {
      return INVALID_CITY_NAME;
    } else {
      return null;
    }
  }

  void onSave(String? city) {
    _cityNameInput = city ?? "";
  }

  Future<void> submitCityName() async {
    final _isValid = keyTextField.currentState!.validate();
    if (_isValid) {
      keyTextField.currentState!.save();
      pageStat.value = const PageStats.loading();
      await _getWeatherCity(_cityNameInput);
      resetCityNameInput();
    }
  }

  void resetCityNameInput() {
    textController.clear();
  }

  Future<void> _getWeatherCity(String cityName) async {
    final failurOrWeatherCity = await weatherCityUseCase
        .call(cityName); // i can call it just with weatherCityUseCase()
    failurOrWeatherCity.fold((failure) {
      ErrorEntity  errorObject = errorEntity.mapFailureToErrorEntity(failure);
      pageStat.value = PageStats.err(errorObject);
    }, (weatherCity) {
      WeatherCityEntity theWeatherCity = WeatherCityPmodel(
          name: weatherCity.name,
          weather: weatherCity.weather,
          main: weatherCity.main,
          wind: weatherCity.wind,
          sys: weatherCity.sys,
          visibility: weatherCity.visibility,
          clouds: weatherCity.clouds);
      if (theWeatherCity.weather.icon.contains("d")) {
        _isDay.value = true;
      } else {
        _isDay.value = false;
      }
      // _weatherCity = WeatherCityPmodel(
      //     name: weatherCity.name,
      //     weather: weatherCity.weather,
      //     main: weatherCity.main,
      //     wind: weatherCity.wind,
      //     sys: weatherCity.sys);
      pageStat.value = PageStats.loaded(theWeatherCity);
    });
  }
}
