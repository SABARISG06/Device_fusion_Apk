import 'dart:developer';

import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/edit_profile_controller.dart';
import 'package:device_fusion/controllers/signup_controller.dart';
import 'package:device_fusion/models/user_model.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditNameScreen extends StatelessWidget {
  const EditNameScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //* create a model to access their data
    UserModel userModel = UserModel();
    //* create a instance of signUpcontroller
    final userNameController = SignUpController.instance.userNameController;
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: CustomText(
          text: 'Name',
          fontWeight: FontWeight.bold,
          size: Dimensions.fontSize18 + 6,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.whiteColor,
            size: Dimensions.fontSize32,
          ),
          onPressed: () => Get.back(),
        ),
        actions: [
          //! Save Button
          IconButton(
              icon: Icon(
                Icons.save_as_outlined,
                color: AppColors.whiteColor,
                size: Dimensions.fontSize32,
              ),
              onPressed: () async {
                final user = UserModel(
                  userName: userNameController.text.trim(),
                  email: userModel.email,
                  password: userModel.password,
                  id: userModel.id,
                );
                log("User ID before calling updateUserRecord: ${user.id}");
                await EditProfileController.instance.updateRecord(user);
              }),
        ],
      ),
      //* body
      body: FutureBuilder(
        future: EditProfileController.instance.getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData && snapshot.data != null) {
              userModel = snapshot.data as UserModel;
              userNameController.text = userModel.userName!;
              return Container(
                margin: EdgeInsets.symmetric(
                  vertical: Dimensions.edgeInsert30,
                  horizontal: Dimensions.edgeInsert30,
                ),
                //! Edit Name Field
                child: CustomTextFormField(
                  autofocus: true,
                  controller: userNameController,
                  text: 'Name',
                  color: AppColors.whiteColor,
                  textColor: AppColors.whiteColor,
                ),
              );
            } else if (snapshot.data == null) {
              Center(
                child: CustomText(
                  text: 'SomeThings went wrong',
                  size: Dimensions.fontSize18,
                  fontWeight: FontWeight.normal,
                ),
              );
            }
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
