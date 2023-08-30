import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/screens/Single_Product_temp/singleproduct_screen.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class MyFavoritesScreen extends StatelessWidget {
  const MyFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          centerTitle: true,
          title: CustomText(
            text: 'Your Favorites',
            size: Dimensions.fontSize18 + 4,
            fontWeight: FontWeight.bold,
          )),
      body: Container(
        height: double.maxFinite,
        color: AppColors.mainColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/favorites.png',
              ),
              SizedBox(
                height: Dimensions.sizedBoxH20,
              ),
              CustomText(
                text: 'No favorites yet',
                size: Dimensions.fontSize32 - 4,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: Dimensions.sizedBoxH20,
              ),
              CustomText(
                text:
                    'Start shopping and add your favorites buy afterwards... Let’s go and Let’s get it',
                size: Dimensions.fontSize18,
                fontWeight: FontWeight.normal,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: Dimensions.sizedBoxH50,
              ),
              //!GO-Home btn
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(Dimensions.width180, Dimensions.height70),
                ),
                onPressed: () {
                  Get.to(() => const SingleProductScreen());
                },
                icon: Icon(
                  IconlyLight.home,
                  size: Dimensions.fontSize32 - 4,
                ),
                label: CustomText(
                  text: 'Go Home',
                  size: Dimensions.fontSize18 + 4,
                  fontWeight: FontWeight.normal,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
