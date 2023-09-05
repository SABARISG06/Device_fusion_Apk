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
    this.controller,
    this.keyboardType,
  });

  final String text;

  final Widget prefixIcon;
  final Widget? suffix;
  final bool obscureText;
  final String obscuringCharacter;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
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
