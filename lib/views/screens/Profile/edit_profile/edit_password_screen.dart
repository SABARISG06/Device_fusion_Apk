import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EditPasswordScreen extends StatelessWidget {
  const EditPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: CustomText(
          text: 'Password',
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
        child: Column(
          children: [
            const CustomTextFormField(
              text: 'Old-Password',
              color: AppColors.whiteColor,
            ),
            SizedBox(
              height: Dimensions.sizedBoxH20,
            ),
            const CustomTextFormField(
              text: 'New-Password',
              color: AppColors.whiteColor,
            ),
            SizedBox(
              height: Dimensions.sizedBoxH20,
            ),
            const CustomTextFormField(
              text: 'ReType-Password',
              color: AppColors.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
