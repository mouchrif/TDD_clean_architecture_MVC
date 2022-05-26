// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:clean_architecture_example/features/weatherCity/presentation/services/view/widgets/form_field_icon.dart';
import '../../../../../../core/constants/sizes/screen_sizes.dart';

class FlexibleParams extends StatelessWidget {
  final int flex;
  final double constraintsWidth;
  final String iconPath;
  final String title;
  final String subTitle;
  const FlexibleParams(
      {Key? key,
      this.flex = 1,
      required this.constraintsWidth,
      required this.iconPath, 
      required this.title, 
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormFieldIcon(iconPath: iconPath),
          SizedBox(width: constraintsWidth),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: kSize16,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
