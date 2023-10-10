import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.text,
    this.prefixIcon,
    this.suffix,
    this.obscureText = false,
    this.obscuringCharacter = '*',
    this.controller,
    this.keyboardType,
    this.maxLength,
    this.inputFormatters,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.color = AppColors.blackColor,
    this.initialValue,
    this.autofocus = false,
    this.textColor = AppColors.blackColor,
  }) : super(key: key);

  final String text;
  final Widget? prefixIcon;
  final Widget? suffix;
  final bool obscureText;
  final String obscuringCharacter;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final Function(String?)? validator;
  final Color? color;
  final String? initialValue;
  final bool? autofocus;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.raleway(
        color: textColor,
        fontWeight: FontWeight.w600,
      ),
      initialValue: initialValue,
      autofocus: autofocus!,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: CustomText(
          text: text,
          size: Dimensions.fontSize16,
          fontWeight: FontWeight.normal,
          color: color!,
        ),
        prefixIcon: prefixIcon,
        suffix: suffix,
      ),
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        return validator?.call(value);
      },
    );
  }
}
