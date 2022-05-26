// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../../core/constants/colors/colors.dart';

class HorizontalDivider extends StatelessWidget {
  final double height;
  const HorizontalDivider({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: height,
      color: kTextColor,
    );
  }
}
