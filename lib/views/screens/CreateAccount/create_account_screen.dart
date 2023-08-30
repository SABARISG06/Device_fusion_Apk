import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/divider_widget.dart';
import 'package:device_fusion/views/widgets/fake_bottom_sheet_widget.dart';
import 'package:device_fusion/views/widgets/other_login_widget.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
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
              height: MediaQuery.of(context).size.height * 0.80,
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
                    padding: EdgeInsets.all(Dimensions.edgeInsert30),
                    child: Column(
                      children: [
                        const CustomTextFormField(
                          text: 'User Name',
                          prefixIcon: Icon(IconlyLight.user),
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        const CustomTextFormField(
                          text: 'E-mail',
                          prefixIcon: Icon(IconlyLight.message),
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        const CustomTextFormField(
                          obscureText: false,
                          text: 'Password',
                          prefixIcon: Icon(IconlyLight.lock),
                          obscuringCharacter: '*',
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH20,
                        ),
                        CustomTextFormField(
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
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH15,
                        ),
                        //!other login options
                        const OtherLoginIcon()
                      ],
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
