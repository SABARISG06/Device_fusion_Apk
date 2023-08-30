import 'package:country_code_picker/country_code_picker.dart';
import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/screens/Phonenumber/otp_verification_screen.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/divider_widget.dart';
import 'package:device_fusion/views/widgets/fake_bottom_sheet_widget.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

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
                height: Dimensions.height620,
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
                          Text(
                            'Enter Your 10 Digits Number',
                            style: GoogleFonts.raleway(
                              fontSize: Dimensions.fontSize18,
                            ),
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
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH20,
                          ),
                          Text(
                            'We will send you one time password (OTP)',
                            style: GoogleFonts.raleway(
                              fontSize: Dimensions.fontSize16,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH50 + 30,
                          ),
                          CustomElevatedBtn(
                            text: 'Submit',
                            color: AppColors.whiteColor,
                            bgColor: AppColors.primaryColor,
                            onPressed: () {
                              Get.to(() => const OTPVerificationScreen());
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
