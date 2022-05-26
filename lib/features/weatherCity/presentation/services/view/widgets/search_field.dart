// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:clean_architecture_example/features/weatherCity/presentation/services/controller/weather_city_controller.dart';
import 'package:clean_architecture_example/features/weatherCity/presentation/services/view/widgets/form_field_icon.dart';
import '../../../../../../core/constants/colors/colors.dart';
import '../../../../../../core/constants/sizes/screen_sizes.dart';

class SearchField extends StatelessWidget {
  final WeatherCityController controller;
  final GlobalKey<FormState>? keyField;
  final VoidCallback onPressed;
  const SearchField({Key? key, required this.controller, this.keyField, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyField,
      child: TextFormField(
        controller: controller.textController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        style: TextStyle(
          color: kTextColor,
          fontSize: kSize18,
        ),
        decoration: InputDecoration(
          icon: const FormFieldIcon(iconPath: "assets/icons/location.svg"),
          hintText: "Enter your city",
          hintMaxLines: 1,
          hintStyle: TextStyle(
            color: kTextColor.withOpacity(0.5),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kTextColor),
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: const FormFieldIcon(iconPath: "assets/icons/go.svg"),
          ),
        ),
        // initialValue: null,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        // onChanged: (value) => controller.onChanged(value),
        validator: (value) => controller.validateCityName(value ?? ""),
        onSaved: (value) => controller.onSave(value),
      ),
    );
  }
}
