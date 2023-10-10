import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CustomRadioTile extends StatelessWidget {
  const CustomRadioTile({
    super.key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    required this.text,
  });

  final String text;
  final String value;
  final String groupValue;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
      ),
      child: RadioListTile(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        activeColor: AppColors.primaryColor,
        title: CustomText(
          text: text,
          size: Dimensions.sizedBoxH20 + 4,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
