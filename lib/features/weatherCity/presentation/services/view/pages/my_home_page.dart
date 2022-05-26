// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:clean_architecture_example/features/weatherCity/presentation/services/view/widgets/display_weather_city.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DisplayWeatherCity(),
      ),
    );
  }
}
