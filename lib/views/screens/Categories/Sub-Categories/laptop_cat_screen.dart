import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/price_sheet_controller.dart';
import 'package:device_fusion/views/widgets/Sub-Category/sun_cat_laptop_widget.dart';
import 'package:device_fusion/views/widgets/getx_sortingbottomsheet_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';

class CategoryLaptops extends StatelessWidget {
  const CategoryLaptops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: CustomText(
          text: 'Laptops',
          size: Dimensions.fontSize18 + 6,
          fontWeight: FontWeight.normal,
        ),
        actions: [
          IconButton(
            onPressed: () {
              bottomSheet();
            },
            icon: Icon(
              IconlyBold.filter,
              color: AppColors.whiteColor,
              size: Dimensions.iconSize34,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.whiteColor,
            size: Dimensions.iconSize48,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: Dimensions.edgeInsert10 + 10,
        ),
        child: const SubCategoryLaptop(),
      ),
    );
  }

  Future<void> bottomSheet() async {
    await Future.delayed(Duration.zero);
    return Get.bottomSheet(SortingBottomSheet(
      onApplyBtn: () {
        SortingListController.instance.isLaptopSorting();
        Get.back();
      },
      onClearBtn: () {
        SortingListController.instance.groupValue.value = 1;
        SortingListController.instance.isLaptopSorting();
        Get.back();
      },
    ));
  }
}
