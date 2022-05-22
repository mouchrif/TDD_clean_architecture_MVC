// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:clean_architecture_example/core/constants/colors/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: kTextColor,
      ),
      headline6: TextStyle(
        color: kWhiteColor,
      ),
      headline5: TextStyle(
        color: kTextColor,
      ),
      headline2: TextStyle(
        color: kWhiteColor,
      ),
    ),
  );
}
