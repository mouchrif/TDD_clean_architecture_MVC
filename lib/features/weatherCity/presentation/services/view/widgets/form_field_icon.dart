// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:clean_architecture_example/core/constants/colors/colors.dart';
import 'package:clean_architecture_example/core/constants/sizes/screen_sizes.dart';

class FormFieldIcon extends StatelessWidget {
  final String iconPath;
  const FormFieldIcon({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconPath,
      color: kTextColor,
      height: screenHeight*0.03,
    );
  }
}
