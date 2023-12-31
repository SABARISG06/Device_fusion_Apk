import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/signup_controller.dart';
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
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/create_account.png',
              width: Dimensions.width414,
              height: Dimensions.height291 + 9,
            ),
            CustomFakeBottomSheet(
              width: Dimensions.width413,
              height: MediaQuery.of(context).size.height * 0.85,
              child: Container(
                margin: EdgeInsets.only(
                  top: Dimensions.edgeInsert30,
                  left: Dimensions.edgeInsert50,
                  right: Dimensions.edgeInsert50,
                ),
                child: Form(
                  key: SignUpController.instance.signupFormKey,
                  child: Column(
                    children: [
                      //!Divider
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
                      SizedBox(
                        height: Dimensions.sizedBoxH20,
                      ),
                      //!User Name
                      CustomTextFormField(
                        keyboardType: TextInputType.name,
                        controller:
                            SignUpController.instance.userNameController,
                        text: 'User Name',
                        prefixIcon: const Icon(IconlyLight.user),
                        validator: (value) =>
                            SignUpController.instance.isUserName(value),
                        onSaved: (value) =>
                            SignUpController.instance.userName = value!,
                      ),
                      SizedBox(
                        height: Dimensions.sizedBoxH20,
                      ),
                      //!Email field
                      CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: SignUpController.instance.emailController,
                        text: 'E-mail',
                        prefixIcon: const Icon(IconlyLight.message),
                        validator: (value) =>
                            SignUpController.instance.isValidEmail(value),
                        onSaved: (value) =>
                            SignUpController.instance.email = value!,
                      ),
                      SizedBox(
                        height: Dimensions.sizedBoxH20,
                      ),
                      //!Password field
                      CustomTextFormField(
                        keyboardType: TextInputType.name,
                        controller:
                            SignUpController.instance.passwordController,
                        obscureText: true,
                        text: 'Password',
                        prefixIcon: const Icon(IconlyLight.lock),
                        validator: (value) =>
                            SignUpController.instance.isValidPassword(value),
                        onSaved: (value) =>
                            SignUpController.instance.password = value!,
                      ),
                      SizedBox(
                        height: Dimensions.sizedBoxH20,
                      ),
                      //!Confirm Password field
                      Obx(
                        () => CustomTextFormField(
                          keyboardType: TextInputType.name,
                          controller: SignUpController
                              .instance.confirmPasswordController,
                          obscureText: SignUpController.instance.isShow.value,
                          text: 'Confirm Password',
                          prefixIcon: const Icon(IconlyLight.lock),
                          suffix: InkWell(
                            onTap: () {
                              SignUpController.instance.isShowToggle();
                            },
                            child: CustomText(
                              text: SignUpController.instance.isShow.value
                                  ? 'Show'
                                  : 'Hide',
                              size: Dimensions.fontSize16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          validator: (value) => SignUpController.instance
                              .isValidConfirmPassword(value),
                          onSaved: (value) => SignUpController
                              .instance.confirmPassword = value!,
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.sizedBoxH30,
                      ),
                      CustomElevatedBtn(
                        text: 'Create account',
                        color: AppColors.whiteColor,
                        bgColor: AppColors.primaryColor,
                        onPressed: () =>
                            SignUpController.instance.onCreateAnAccount(),
                      ),
                      SizedBox(
                        height: Dimensions.sizedBoxH15,
                      ),
                      //!other login options
                      const OtherLoginIcon()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
