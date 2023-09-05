import 'package:device_fusion/controllers/signup_controller.dart';
import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/screens/Bottom_Navigation/bottom_navigation.dart';
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
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    // print(MediaQuery.of(context).size.height);
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: CustomText(
                text: 'Welcome Back',
                size: Dimensions.fontSize32,
                fontWeight: FontWeight.normal,
              ),
            ),
            Image.asset(
              'assets/images/Login_image.png',
              width: Dimensions.width414,
              height: Dimensions.height291,
            ),
            //! Bottom-Sheet
            CustomFakeBottomSheet(
              width: Dimensions.width413,
              height: Dimensions.height535,
              child: Column(
                children: [
                  SizedBox(
                    height: Dimensions.sizedBoxH10,
                  ),
                  //*CustomeDivider is here.
                  const CustomDivider(),
                  SizedBox(
                    height: Dimensions.sizedBoxH20,
                  ),
                  //!Login
                  CustomText(
                    text: 'Login',
                    size: Dimensions.fontSize18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                  ),
                  SizedBox(
                    width: Dimensions.width314,
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //!Email feild
                          CustomTextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: controller.email,
                            text: 'Email',
                            prefixIcon: Icon(
                              IconlyLight.message,
                              size: Dimensions.iconSize34 - 10,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH30,
                          ),
                          //!Password feild
                          CustomTextFormField(
                            keyboardType: TextInputType.number,
                            controller: controller.password,
                            obscureText: false,
                            text: 'Password',
                            prefixIcon: Icon(
                              IconlyLight.lock,
                              size: Dimensions.iconSize34 - 10,
                            ),
                            suffix: CustomText(
                              text: 'Show',
                              size: Dimensions.fontSize16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                            obscuringCharacter: '*',
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH10,
                          ),
                          //? Forgot Password
                          CustomTextBtn(
                            text: 'Forgot Password ?',
                            onPressed: () {
                              Get.to(() => const ForgotPassword());
                            },
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH30,
                          ),
                          //? Login Button
                          Center(
                            child: CustomElevatedBtn(
                              text: 'Login',
                              color: AppColors.whiteColor,
                              bgColor: AppColors.primaryColor,
                              onPressed: () {
                                Get.to(() => const BottomNavigationScreen());
                              },
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH20,
                          ),
                          //? Create an account
                          Center(
                            child: CustomTextBtn(
                              text: 'Create an account',
                              onPressed: () {
                                Get.to(
                                  () => const CreateAccount(),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
