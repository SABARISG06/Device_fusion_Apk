import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EditPhoneNumberScreen extends StatelessWidget {
  const EditPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: CustomText(
          text: 'Phone Number',
          fontWeight: FontWeight.bold,
          size: Dimensions.fontSize18 + 6,
        ),
        centerTitle: true,
        leading: Icon(
          Icons.chevron_left,
          color: AppColors.whiteColor,
          size: Dimensions.fontSize32,
        ),
        actions: [
          Icon(
            Icons.save_as_outlined,
            color: AppColors.whiteColor,
            size: Dimensions.fontSize32,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: Dimensions.edgeInsert30,
          horizontal: Dimensions.edgeInsert30,
        ),
        child: const CustomTextFormField(
          text: 'Phone Number',
          color: AppColors.whiteColor,
          maxLength: 10,
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
