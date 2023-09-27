import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/price_sheet_controller.dart';
import 'package:device_fusion/views/screens/Single_Product_temp/singleproduct_screen.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubCategoryHeadPhone extends StatelessWidget {
  const SubCategoryHeadPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.6 / 3,
      ),
      itemCount: 6,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Get.to(() => const SingleProductScreen());
        },
        child: Obx(
          () => Card(
            child: Padding(
              padding: EdgeInsets.all(Dimensions.edgeInsert10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //!Image
                  Image.asset(
                    SortingListController
                        .instance.headPhoneProduct[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBoxH10,
                  ),
                  //!title
                  CustomText(
                    text: SortingListController
                        .instance.headPhoneProduct[index].title,
                    size: Dimensions.fontSize18 - 2,
                    fontWeight: FontWeight.normal,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    color: AppColors.blackColor,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBoxH10,
                  ),
                  //!Price
                  CustomText(
                    text: SortingListController
                        .instance.headPhoneProduct[index].price,
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
                  //!Free shipping
                  CustomText(
                    text: SortingListController
                        .instance.headPhoneProduct[index].shipping,
                    size: Dimensions.fontSize18 - 4,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
