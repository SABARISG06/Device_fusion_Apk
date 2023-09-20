import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/constants/app_icons.dart';
import 'package:device_fusion/views/screens/Login/login_screen.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class ChooseLangugage extends StatelessWidget {
  const ChooseLangugage({super.key});

  static List<String> languageIcons = [
    AppIcons.english,
    AppIcons.tamil,
    AppIcons.chinese,
    AppIcons.hindi
  ];

  static List<String> languageNames = [
    'English',
    'Tamil',
    'Chinese',
    'Hindi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(Dimensions.edgeInsert30),
        color: AppColors.mainColor,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(Dimensions.edgeInsert30),
              child: CustomText(
                text: 'Please Select Your Familiar Language',
                size: Dimensions.fontSize32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: Dimensions.sizedBoxH50,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: languageNames.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Dimensions.crossAxis30,
                  mainAxisSpacing: Dimensions.mainAxis40,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: Container(
                    width: Dimensions.width160,
                    height: Dimensions.height160,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.borderRadius10),
                      color: AppColors.whiteColor,
                    ),
                    //*English-Icon
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: Dimensions.edgeInsert30),
                          child: Iconify(
                            languageIcons[index],
                            size: Dimensions.iconSize48,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH50 / 2,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: Dimensions.edgeInsert50),
                          child: CustomText(
                            text: languageNames[index],
                            size: Dimensions.fontSize16,
                            fontWeight: FontWeight.w800,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
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
