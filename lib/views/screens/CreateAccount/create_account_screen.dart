import 'package:device_fusion/controllers/signup_controller.dart';
import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/divider_widget.dart';
import 'package:device_fusion/views/widgets/fake_bottom_sheet_widget.dart';
import 'package:device_fusion/views/widgets/other_login_widget.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/create_account.png',
              width: Dimensions.width414,
              height: Dimensions.height291,
            ),
            CustomFakeBottomSheet(
              width: Dimensions.width413,
              height: Dimensions.height620,
              child: Column(
                children: [
                  const CustomDivider(),
                  SizedBox(
                    height: Dimensions.sizedBoxH20,
                  ),
                  //!Create an account
                  CustomText(
                    text: 'Create an account',
                    size: Dimensions.fontSize18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                  Container(
                    width: Dimensions.width314,
                    padding: EdgeInsets.only(top: Dimensions.edgeInsert10),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          CustomTextFormField(
                            keyboardType: TextInputType.name,
                            controller: controller.userName,
                            text: 'User Name',
                            prefixIcon: const Icon(IconlyLight.user),
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH20,
                          ),
                          CustomTextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: controller.email,
                            text: 'E-mail',
                            prefixIcon: const Icon(IconlyLight.message),
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH20,
                          ),
                          CustomTextFormField(
                            keyboardType: TextInputType.name,
                            controller: controller.password,
                            obscureText: false,
                            text: 'Password',
                            prefixIcon: const Icon(IconlyLight.lock),
                            obscuringCharacter: '*',
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH20,
                          ),
                          CustomTextFormField(
                            keyboardType: TextInputType.name,
                            controller: controller.confirmPassword,
                            obscureText: false,
                            text: 'Confirm Password',
                            prefixIcon: const Icon(IconlyLight.lock),
                            suffix: CustomText(
                              text: 'Show',
                              size: Dimensions.fontSize16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                            obscuringCharacter: '*',
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH30,
                          ),
                          CustomElevatedBtn(
                            text: 'Create account',
                            color: AppColors.whiteColor,
                            bgColor: AppColors.primaryColor,
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                SignUpController.instance.registerUser(
                                    controller.email.text.trim(),
                                    controller.password.text.trim());
                              }
                            },
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH15,
                          ),
                          //!other login options
                          const OtherLoginIcon()
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
