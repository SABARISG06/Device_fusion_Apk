import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/product_carosuel_controller.dart';
import 'package:device_fusion/models/product_carusouel_model.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhonesCarousel extends StatelessWidget {
  const PhonesCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductCarosuelController());
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.sizedBoxH20),
      height: Dimensions.height300,
      child: PageView.builder(
        controller: controller.pageController,
        itemCount: ProductItems.listOfProducts.length,
        itemBuilder: (context, index) => Obx(
          () => Transform(
            transform: controller.scalingUpandDown(index),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: Dimensions.sizedBoxH10,
                  child: SizedBox(
                    width: controller.width,
                    height: controller.height,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Dimensions.borderRadius20 + 10),
                      ),
                      elevation: Dimensions.sizedBoxH10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: Dimensions.sizedBoxH50,
                          ),
                          //* title
                          CustomText(
                            text: ProductItems.listOfProducts[index].title,
                            size: Dimensions.fontSize16,
                            fontWeight: FontWeight.w700,
                            textAlign: TextAlign.center,
                            color: AppColors.blackColor,
                          ),
                          //* Amount
                          CustomText(
                            text: ProductItems.listOfProducts[index].amount,
                            size: Dimensions.fontSize16,
                            fontWeight: FontWeight.w700,
                            textDecoration: TextDecoration.lineThrough,
                            color: AppColors.blackColor,
                          ),
                          CustomText(
                            text: "?",
                            size: Dimensions.fontSize16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //!Circular avatar
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: Dimensions.elevation80,
                    backgroundImage:
                        AssetImage(ProductItems.listOfProducts[index].imageUrl),
                  ),
                ),
                //!Arrow icon
                Positioned(
                  bottom: Dimensions.sizedBoxH15,
                  left: Dimensions.left160,
                  child: Container(
                    width: Dimensions.width64,
                    height: Dimensions.height64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight:
                            Radius.circular(Dimensions.borderRadius20 + 5),
                      ),
                      color: const Color(0xffd9d9d9),
                    ),
                    child: Icon(
                      Icons.chevron_right,
                      size: Dimensions.iconSize50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
