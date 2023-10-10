import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/gender_controller.dart';
import 'package:device_fusion/views/widgets/radio_tile_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditGenderScreen extends StatelessWidget {
  const EditGenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: CustomText(
          text: 'Gender',
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
          IconButton(
            icon: Icon(
              Icons.save_as_outlined,
              color: AppColors.whiteColor,
              size: Dimensions.fontSize32,
            ),
            onPressed: () => GenderController.instance.onUpdateMyGender(),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: Dimensions.edgeInsert30,
          horizontal: Dimensions.edgeInsert30,
        ),
        child: Obx(
          () => Column(
            children: [
              CustomRadioTile(
                text: 'Male',
                value: 'Male',
                groupValue: GenderController.instance.genderText.value,
                onChanged: (value) {
                  GenderController.instance.genderText.value = value!;
                },
              ),
              CustomRadioTile(
                text: 'Female',
                value: 'Female',
                groupValue: GenderController.instance.genderText.value,
                onChanged: (value) {
                  GenderController.instance.genderText.value = value!;
                },
              ),
              CustomRadioTile(
                text: 'Other',
                value: 'Other',
                groupValue: GenderController.instance.genderText.value,
                onChanged: (value) {
                  GenderController.instance.genderText.value = value!;
                },
              ),
              CustomRadioTile(
                text: 'Prefer not to say',
                value: 'Prefer not to say',
                groupValue: GenderController.instance.genderText.value,
                onChanged: (value) {
                  GenderController.instance.genderText.value = value!;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
