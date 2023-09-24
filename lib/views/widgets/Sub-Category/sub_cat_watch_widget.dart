import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/dummy%20data/watch_dummy_data.dart';
import 'package:device_fusion/views/screens/Single_Product_temp/singleproduct_screen.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCategoryWatch extends StatelessWidget {
  const SubCategoryWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5 / 3,
      ),
      itemCount: 6,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Get.to(() => const SingleProductScreen());
        },
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.edgeInsert10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  SubWatchCategory.listOfWatch[index].imageUrl,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: Dimensions.sizedBoxH10,
                ),
                CustomText(
                  text: SubWatchCategory.listOfWatch[index].title,
                  size: Dimensions.fontSize18 - 2,
                  fontWeight: FontWeight.normal,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  color: AppColors.blackColor,
                ),
                SizedBox(
                  height: Dimensions.sizedBoxH10,
                ),
                CustomText(
                  text: SubWatchCategory.listOfWatch[index].price,
                  size: Dimensions.fontSize18 + 4,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  height: Dimensions.sizedBoxH10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColors.primaryColor,
                          size: Dimensions.iconSize34 - 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.sizedBoxW10 - 5,
                    ),
                    CustomText(
                      text: '(3.9 Users)',
                      fontWeight: FontWeight.bold,
                      size: Dimensions.fontSize18 - 4,
                      color: AppColors.blackColor,
                    )
                  ],
                ),
                SizedBox(
                  height: Dimensions.sizedBoxH20,
                ),
                CustomText(
                  text: SubWatchCategory.listOfWatch[index].shipping,
                  size: Dimensions.fontSize18 - 4,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blackColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
