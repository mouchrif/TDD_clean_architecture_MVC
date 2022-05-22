// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:clean_architecture_example/core/errors/error_entity.dart';
import 'package:clean_architecture_example/features/weatherCity/domain/entities/weather_city_entity.dart';

part 'page_stats.freezed.dart';

@freezed
class PageStats with _$PageStats{
  const PageStats._();
  const factory PageStats.initial() = Initial;
  const factory PageStats.loading() = Loading;
  const factory PageStats.loaded(WeatherCityEntity weatherCityEntity) = Loaded;
  const factory PageStats.err(ErrorEntity errorEntity) = Err;
}
