import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpFields extends StatelessWidget {
  const OtpFields({super.key, this.onSubmit});

  final Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.width300,
      height: Dimensions.height75,
      child: OtpTextField(
        numberOfFields: 6,
        borderColor: AppColors.primaryColor,
        enabledBorderColor: AppColors.blackColor,
        obscureText: true,
        showFieldAsBox: true,
        onSubmit: onSubmit,
        filled: true,
      ),
    );
  }
}
