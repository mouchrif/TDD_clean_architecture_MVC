// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:clean_architecture_example/core/di/injection.dart';
import 'package:clean_architecture_example/core/theme/app_theme.dart';
import 'package:clean_architecture_example/features/weatherCity/prensentation/modules/view/pages/my_home_page.dart';

// Project imports:

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean architecture flutter project example',
      theme: AppTheme.lightTheme,
      home: const MyHomePage(),
    );
  }
}
