import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/screens/OnBoarding/choose_language_screen.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: Dimensions.edgeInsert50),
            child: CustomText(
              text: 'Find your Gadget',
              size: Dimensions.fontSize60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            'assets/images/splash_image.png',
            width: Dimensions.splashWidth392,
            height: Dimensions.splashHeight441,
          ),
          SizedBox(
            height: Dimensions.sizedBoxH50,
          ),
          //!Here my custom button added
          CustomElevatedBtn(
            text: 'Get Started',
            color: AppColors.mainColor,
            bgColor: AppColors.whiteColor,
            onPressed: () {
              Get.to(
                () => const ChooseLangugage(),
              );
            },
          ),
        ],
      ),
    );
  }
}
