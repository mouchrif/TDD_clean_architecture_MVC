// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:clean_architecture_example/core/constants/colors/colors.dart';
import 'package:clean_architecture_example/core/constants/sizes/screen_sizes.dart';
import 'package:clean_architecture_example/core/constants/strings/constants.dart';
import 'package:clean_architecture_example/core/di/injection.dart';
import 'package:clean_architecture_example/features/weatherCity/presentation/services/controller/weather_city_controller.dart';
import 'package:clean_architecture_example/features/weatherCity/presentation/services/view/widgets/flexible_param.dart';
import 'package:clean_architecture_example/features/weatherCity/presentation/services/view/widgets/form_field_icon.dart';
import 'package:clean_architecture_example/features/weatherCity/presentation/services/view/widgets/glassmorphisme.dart';
import 'package:clean_architecture_example/features/weatherCity/presentation/services/view/widgets/horizontal_divider.dart';
import 'package:clean_architecture_example/features/weatherCity/presentation/services/view/widgets/search_field.dart';

class DisplayWeatherCity extends StatelessWidget {
  DisplayWeatherCity({Key? key}) : super(key: key);
  final weatherCityCtrlr = Get.put(getIt<WeatherCityController>());

  @override
  Widget build(BuildContext context) {
    // final weatherCityCtrlr = Get.find<WeatherCityController>();
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Obx(()=>Image.asset(
            weatherCityCtrlr.isDay
            ? "assets/images/day.png"
            : "assets/images/night.png",
            fit: BoxFit.cover,
          ),),
        ),
        Positioned(
          width: screenWidth,
          height: screenHeight,
          child: Container(
            color: kBlackColor.withOpacity(0.25),
          ),
        ),
        Positioned(
          top: 0,
          left: screenWidth * 0.02,
          right: screenWidth * 0.02,
          bottom: 0,
          child: Column(
            children: [
              SearchField(
                controller: weatherCityCtrlr,
                onPressed: weatherCityCtrlr.submitCityName,
                keyField: weatherCityCtrlr.keyTextField,
              ),
              SizedBox(height: screenHeight*0.03),
              Obx(() {
                return weatherCityCtrlr.pageStat.value.map(
                  initial: (_) => const SizedBox(),
                  loading: (_) => SizedBox(
                    height: screenHeight - statusBarHeight,
                    width: screenWidth,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  loaded: (value) => Column(
                    children: [
                      GlassmorphWidget(
                        height: screenHeight*0.18, 
                        width: screenWidth,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const FormFieldIcon(iconPath: "assets/icons/location.svg"),
                                    SizedBox(width: constraints.maxWidth*0.02,),
                                    Text(
                                      value.weatherCityEntity.name,
                                      style: Theme.of(context).textTheme.headline5,
                                    ),
                                  ],
                                ),
                                SizedBox(height: constraints.maxHeight*0.02),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: (value.weatherCityEntity.main['temp'].toStringAsFixed(1)).toString(),
                                            style: Theme.of(context).textTheme.headline2,
                                          ),
                                          TextSpan(
                                            text: "°",
                                            style: Theme.of(context).textTheme.headline2,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: constraints.maxWidth*0.02),
                                    Image.network(
                                      '$BASE_WEATHER_ICON${value.weatherCityEntity.weather.icon}.png',
                                      height: constraints.maxHeight*0.45,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ],
                                ),
                                // SizedBox(height: screenHeight*0.01),
                                SizedBox(
                                  width: constraints.maxWidth,
                                  child: Text(
                                    value.weatherCityEntity.weather.description.toString(),
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                              ],
                            );
                          }
                        ), 
                      ),
                      SizedBox(height: screenHeight*0.01),
                      GlassmorphWidget(
                        width: screenWidth,
                        height: screenHeight*0.12, 
                        child: LayoutBuilder(builder: (context, constraints) => Row(
                          children: [
                            FlexibleParams(
                              constraintsWidth: constraints.maxWidth*0.02, 
                              iconPath: "assets/icons/humidity.svg",
                              title: "Humidity",
                              subTitle: "${value.weatherCityEntity.main['humidity']}%",
                            ),
                            HorizontalDivider(height: constraints.maxHeight * 0.68),
                            FlexibleParams(
                              constraintsWidth: constraints.maxWidth*0.02, 
                              iconPath: "assets/icons/clouds.svg",
                              title: "Clouds",
                              subTitle: "${value.weatherCityEntity.clouds.values.first}%",
                            ),
                            HorizontalDivider(height: constraints.maxHeight * 0.68),
                            FlexibleParams(
                              constraintsWidth: constraints.maxWidth*0.02, 
                              iconPath: "assets/icons/visibility.svg",
                              title: "Visibility",
                              subTitle: (value.weatherCityEntity.visibility/1000).toStringAsFixed(2)+" km",
                            ),
                          ],
                        ),), 
                      ),
                      SizedBox(height: screenHeight*0.01),
                      GlassmorphWidget(
                        width: screenWidth,
                        height: screenHeight*0.12, 
                        child: LayoutBuilder(
                          builder: (context, constraints) =>  Row(
                            children: [
                              FlexibleParams(
                                constraintsWidth: constraints.maxWidth*0.02, 
                                iconPath: "assets/icons/wind.svg", 
                                title: "Wind", 
                                subTitle: "${value.weatherCityEntity.wind['speed']} km/h",
                              ),
                              HorizontalDivider(height: constraints.maxHeight * 0.68),
                              FlexibleParams(
                                constraintsWidth: constraints.maxWidth*0.02, 
                                iconPath: "assets/icons/pressure.svg", 
                                title: "Pressure", 
                                subTitle: "${value.weatherCityEntity.main['pressure']} hPa",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  err: (value) => SizedBox(
                    height: screenHeight,
                    child: Center(
                      child: Text(value.errorEntity.message),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}
