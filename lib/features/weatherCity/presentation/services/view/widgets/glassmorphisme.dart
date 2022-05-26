// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:glassmorphism/glassmorphism.dart';

// Project imports:
import '../../../../../../core/constants/colors/colors.dart';
import '../../../../../../core/constants/sizes/screen_sizes.dart';

class GlassmorphWidget extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  const GlassmorphWidget({Key? key, required this.child, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: width,
      height: height,
      borderRadius: kRadius10,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.2),
          Colors.white38.withOpacity(0.2)
          // kWhiteColor.withOpacity(0.1),
          // kWhiteColor.withOpacity(0.05),
        ],
        stops: const [
          0.1,
          1,
        ],
      ),
      border: 2.0,
      blur: 2.0,
      borderGradient: LinearGradient(
        // colors: [
        //   Colors.white24.withOpacity(0.2),
        //   Colors.white70.withOpacity(0.2)
        // ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          kWhiteColor.withOpacity(0.5),
          kWhiteColor.withOpacity(0.5),
        ],
      ),
      child: child,
    );
  }
}
