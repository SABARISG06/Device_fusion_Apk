import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CustomTextBtn extends StatelessWidget {
  const CustomTextBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.primaryColor,
  });

  final String text;
  final Function() onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: CustomText(
        text: text,
        size: Dimensions.fontSize16,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
