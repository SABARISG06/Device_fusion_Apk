import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    required this.prefixIcon,
    this.suffix,
    this.obscureText = false,
    this.obscuringCharacter = '*',
  });

  final String text;

  final Widget prefixIcon;
  final Widget? suffix;
  final bool obscureText;
  final String obscuringCharacter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: CustomText(
          text: text,
          size: Dimensions.fontSize16,
          fontWeight: FontWeight.normal,
          color: AppColors.blackColor,
        ),
        prefixIcon: prefixIcon,
        suffix: suffix,
      ),
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
    );
  }
}
