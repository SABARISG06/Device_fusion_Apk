import 'package:country_code_picker/country_code_picker.dart';
import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/views/screens/Phonenumber/otp_verification_screen.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/divider_widget.dart';
import 'package:device_fusion/views/widgets/fake_bottom_sheet_widget.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});
  // Allow up to 10 numeric characters
  // final RegExp _numericRegExp = RegExp(r'^[0-9]{0,10}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.mainColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/number.png'),
              CustomFakeBottomSheet(
                width: Dimensions.width413,
                height: Dimensions.height640,
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
                            text: 'Enter Your 10 Digits Number',
                            size: Dimensions.fontSize18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH50,
                          ),
                          //!country code dropdown.
                          const CountryCodePicker(
                            initialSelection: 'IN',
                          ),
                          const Divider(
                            thickness: 2,
                          ),

                          SizedBox(
                            height: Dimensions.sizedBoxH50,
                          ),
                          //!mobile number field.
                          const CustomTextFormField(
                            text: 'Enter your mobile number',
                            prefixIcon: Icon(IconlyLight.call),
                            keyboardType: TextInputType.number,
                            maxLength: 10,
                            // inputFormatters: [
                            //   FilteringTextInputFormatter.allow(_numericRegExp)
                            // ],
                            // controller: controller.phoneNumber,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH20,
                          ),
                          CustomText(
                            text: 'We will send you one time password (OTP)',
                            size: Dimensions.fontSize16,
                            fontWeight: FontWeight.normal,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH50 + 30,
                          ),
                          CustomElevatedBtn(
                            text: 'Submit',
                            color: AppColors.whiteColor,
                            bgColor: AppColors.primaryColor,
                            onPressed: () async {
                              // String otp = controller.text;
                              Get.to(
                                () => const OTPVerificationScreen(),
                              );
                            },
                          )
                        ],
                      ),
                    )
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
