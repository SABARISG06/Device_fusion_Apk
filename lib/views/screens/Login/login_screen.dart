import 'package:device_fusion/controllers/login_controller.dart';
import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/screens/CreateAccount/create_account_screen.dart';
import 'package:device_fusion/views/screens/Forgot_Password/forgot_password.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/divider_widget.dart';
import 'package:device_fusion/views/widgets/fake_bottom_sheet_widget.dart';
import 'package:device_fusion/views/widgets/text_button_widget.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Welcome Back',
                size: Dimensions.fontSize32,
                fontWeight: FontWeight.normal,
              ),
              Image.asset(
                'assets/images/Login_image.png',
                width: Dimensions.width414,
                height: Dimensions.height291,
              ),
              //! Bottom-Sheet
              CustomFakeBottomSheet(
                height: Dimensions.height535 + 34,
                width: Dimensions.width413,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: Dimensions.edgeInsert30,
                    left: Dimensions.edgeInsert50,
                    right: Dimensions.edgeInsert50,
                  ),
                  child: Form(
                    key: LoginController.instance.loginFormKey,
                    child: Column(
                      children: [
                        //*CustomeDivider is here.
                        const CustomDivider(),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        CustomText(
                          text: 'Login',
                          size: Dimensions.fontSize18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackColor,
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        //!Email field
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: LoginController.instance.emailController,
                          text: 'Email',
                          prefixIcon: Icon(
                            IconlyLight.message,
                            size: Dimensions.iconSize34 - 10,
                          ),
                          validator: (value) =>
                              LoginController.instance.isValidEmail(value),
                          onSaved: (value) =>
                              LoginController.instance.email = value!,
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        //!Password
                        Obx(
                          () => CustomTextFormField(
                            controller:
                                LoginController.instance.passwordController,
                            obscureText: LoginController.instance.isShow.value,
                            text: 'Password',
                            prefixIcon: Icon(
                              IconlyLight.lock,
                              size: Dimensions.iconSize34 - 10,
                            ),
                            suffix: InkWell(
                              onTap: () {
                                LoginController.instance.isShowToggle();
                              },
                              child: CustomText(
                                text: LoginController.instance.isShow.value
                                    ? 'Show'
                                    : 'Hide',
                                size: Dimensions.fontSize16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            validator: (value) =>
                                LoginController.instance.isValidPassword(value),
                            onSaved: (value) =>
                                LoginController.instance.password = value!,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        //!ForgotPassword
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CustomTextBtn(
                            text: 'Forgot Password ?',
                            onPressed: () {
                              Get.to(() => const ForgotPassword());
                            },
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        CustomElevatedBtn(
                          text: 'Login',
                          color: AppColors.whiteColor,
                          bgColor: AppColors.primaryColor,
                          onPressed: LoginController.instance.onLogin,
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        CustomTextBtn(
                          text: 'Create an account',
                          onPressed: () {
                            Get.to(
                              () => const CreateAccount(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
