import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/price_sheet_controller.dart';
import 'package:device_fusion/views/screens/Single_Product_temp/singleproduct_screen.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubApiProduct extends StatelessWidget {
  const SubApiProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5 / 3,
        ),
        itemCount: SortingListController.instance.restAPIProduct.length,
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
                  //!Image
                  Image.network(
                    SortingListController.instance.restAPIProduct[index].image,
                    fit: BoxFit.fill,
                    height: Dimensions.height215 - 15,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBoxH10,
                  ),
                  //!title
                  CustomText(
                    text: SortingListController
                        .instance.restAPIProduct[index].title,
                    size: Dimensions.fontSize18 - 2,
                    fontWeight: FontWeight.normal,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    color: AppColors.blackColor,
                  ),
                  SizedBox(
                    height: Dimensions.sizedBoxH10,
                  ),
                  //!price
                  CustomText(
                    text:
                        '₹${SortingListController.instance.restAPIProduct[index].price.toString()}',
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
                          SortingListController
                              .instance.restAPIProduct[index].rating.rate
                              .toInt(),
                          (index) => Icon(
                            Icons.star_border,
                            color: AppColors.primaryColor,
                            size: Dimensions.iconSize34 - 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.sizedBoxW10 - 5,
                      ),
                      //!rating
                      CustomText(
                        text: SortingListController
                            .instance.restAPIProduct[index].rating.rate
                            .toString(),
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
                    text: SortingListController
                        .instance.restAPIProduct[index].rating.count
                        .toString(),
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
