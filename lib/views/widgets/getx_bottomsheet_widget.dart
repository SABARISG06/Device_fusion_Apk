import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:device_fusion/controllers/price_sheet_controller.dart';
import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_button_widget.dart';

class SortingBottomSheet extends StatelessWidget {
  const SortingBottomSheet(
      {super.key, required this.onApplyBtn, required this.onClearBtn});

  final Function() onApplyBtn;
  final Function() onClearBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.borderRadius20),
          topRight: Radius.circular(Dimensions.borderRadius20),
        ),
        color: AppColors.whiteColor,
      ),
      height: Dimensions.height350,
      width: double.infinity,
      child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //*Ascending Order
            RadioListTile<int>(
              value: 1,
              groupValue: SortingListController.instance.groupValue.value,
              onChanged: (value) {
                SortingListController.instance.groupValue.value = value!;
              },
              title: CustomText(
                text: 'Ascending Order',
                fontWeight: FontWeight.w600,
                size: Dimensions.fontSize16,
                color: AppColors.blackColor,
              ),
            ),
            //*Descending Order
            RadioListTile<int>(
              value: 2,
              groupValue: SortingListController.instance.groupValue.value,
              onChanged: (value) {
                SortingListController.instance.groupValue.value = value!;
              },
              title: CustomText(
                text: 'Descending Order',
                fontWeight: FontWeight.w600,
                size: Dimensions.fontSize16,
                color: AppColors.blackColor,
              ),
            ),
            //*High to Low
            RadioListTile<int>(
              value: 3,
              groupValue: SortingListController.instance.groupValue.value,
              onChanged: (value) {
                SortingListController.instance.groupValue.value = value!;
              },
              title: CustomText(
                text: 'High to Low',
                fontWeight: FontWeight.w600,
                size: Dimensions.fontSize16,
                color: AppColors.blackColor,
              ),
            ),
            //*Low to High
            RadioListTile<int>(
              value: 4,
              groupValue: SortingListController.instance.groupValue.value,
              onChanged: (value) {
                SortingListController.instance.groupValue.value = value!;
              },
              title: CustomText(
                text: 'Low to High',
                fontWeight: FontWeight.w600,
                size: Dimensions.fontSize16,
                color: AppColors.blackColor,
              ),
            ),
            SizedBox(
              height: Dimensions.sizedBoxH15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextBtn(text: 'Apply', onPressed: onApplyBtn),
                CustomTextBtn(text: 'Clear Filter', onPressed: onClearBtn),
              ],
            )
          ],
        ),
      ),
    );
  }
}
