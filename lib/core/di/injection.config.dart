// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// Package imports:
import 'package:data_connection_checker/data_connection_checker.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

// Project imports:
import '../errors/error_entity.dart' as _i5;
import '../network/network_info.dart' as _i6;

import '../../features/weatherCity/data/datasources/local/weather_city_local_datasource.dart'
    as _i7;
import '../../features/weatherCity/data/datasources/remote/weather_city_remote_datasource.dart'
    as _i8;
import '../../features/weatherCity/data/repositories/weather_city_repository_impl.dart'
    as _i10;
import '../../features/weatherCity/domain/repositories/weather_city_repository.dart'
    as _i9;
import '../../features/weatherCity/domain/usecases/get_weather_city_usecase.dart'
    as _i11;
import '../../features/weatherCity/presentation/services/controller/weather_city_controller.dart'
    as _i12;
import 'registre_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Client>(() => registerModule.client);
  gh.singleton<_i4.DataConnectionChecker>(registerModule.connectionChecker);
  gh.factoryParam<_i5.ErrorEntity, String, String>(
      (title, message) => _i5.ErrorEntity(title: title, message: message));
  gh.lazySingleton<_i6.NetworkInfo>(
      () => _i6.NetworkInfoImpl(get<_i4.DataConnectionChecker>()));
  gh.lazySingleton<_i7.WeatherCityLocalDataSource>(
      () => _i7.WeatherCityLocalDataSourceImpl());
  gh.lazySingleton<_i8.WeatherCityRemoteDataSource>(
      () => _i8.WeatherCityRemoteDataSourceImpl(get<_i3.Client>()));
  gh.lazySingleton<_i9.WeatherCityRepository>(() =>
      _i10.WeatherCityRepositoryImpl(
          get<_i6.NetworkInfo>(),
          get<_i8.WeatherCityRemoteDataSource>(),
          get<_i7.WeatherCityLocalDataSource>()));
  gh.factory<_i11.GetWeatherCityUseCase>(
      () => _i11.GetWeatherCityUseCase(get<_i9.WeatherCityRepository>()));
  gh.factory<_i12.WeatherCityController>(() => _i12.WeatherCityController(
      weatherCityUseCase: get<_i11.GetWeatherCityUseCase>(),
      errorEntity: get<_i5.ErrorEntity>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {
  @override
  _i4.DataConnectionChecker get connectionChecker =>
      _i4.DataConnectionChecker();
}
