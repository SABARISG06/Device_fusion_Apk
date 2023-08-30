import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/views/screens/Login/login_screen.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/divider_widget.dart';
import 'package:device_fusion/views/widgets/fake_bottom_sheet_widget.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.mainColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/forgot_password.png'),
              CustomFakeBottomSheet(
                width: 413,
                height: 530,
                child: Column(
                  children: [
                    const CustomDivider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Text(
                            'Did you forgot your password?',
                            style: GoogleFonts.raleway(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Enter your email address you\'re using for your account below and we will send you an OTP',
                            style: GoogleFonts.raleway(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const CustomTextFormField(
                            text: 'Enter your Registered E-mail',
                            prefixIcon: Icon(IconlyLight.message),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          CustomElevatedBtn(
                            text: 'Send OTP',
                            color: AppColors.whiteColor,
                            bgColor: AppColors.primaryColor,
                            onPressed: () {},
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          //!Back to Sign-in button
                          TextButton.icon(
                            onPressed: () {
                              Get.to(() => const LoginScreen());
                            },
                            icon: const Icon(IconlyLight.arrow_left),
                            label: Text(
                              'Back to Sign-in',
                              style: GoogleFonts.raleway(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
