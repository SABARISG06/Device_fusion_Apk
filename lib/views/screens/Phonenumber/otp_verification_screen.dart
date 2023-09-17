import 'package:device_fusion/controllers/otp_controller.dart';
import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/divider_widget.dart';
import 'package:device_fusion/views/widgets/fake_bottom_sheet_widget.dart';
import 'package:device_fusion/views/widgets/otp_formfield_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OTPController());
    String? otp;
    return Scaffold(
      body: Container(
        color: AppColors.mainColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/OTP.png'),
              CustomFakeBottomSheet(
                width: Dimensions.width413,
                height: Dimensions.height585,
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.sizedBoxH20,
                    ),
                    const CustomDivider(),
                    SizedBox(
                      height: Dimensions.sizedBoxH10,
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimensions.edgeInsert30),
                      child: Column(
                        children: [
                          CustomText(
                            text: 'Enter Your OTP',
                            size: Dimensions.fontSize18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH30 + 10,
                          ),

                          CustomText(
                            text:
                                'We have send an OTP to this number +91 98******70',
                            size: Dimensions.fontSize18,
                            fontWeight: FontWeight.bold,
                            textAlign: TextAlign.center,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH30,
                          ),
                          //!OTP fields.
                          OtpFields(
                            onSubmit: (code) {
                              otp = code;
                              // OTPController.instance.verifyOTP(otp!);
                            },
                          ),

                          SizedBox(
                            height: Dimensions.height150,
                          ),
                          CustomElevatedBtn(
                            text: 'Submit',
                            color: AppColors.whiteColor,
                            bgColor: AppColors.primaryColor,
                            onPressed: () {
                              // OTPController.instance.verifyOTP(otp!);
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
