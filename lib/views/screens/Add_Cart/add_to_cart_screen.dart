import 'dart:developer';
import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/button_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.mainColor,
        title: CustomText(
          text: 'My Cart',
          size: Dimensions.fontSize18 + 2,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.edgeInsert10 + 10),
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => SizedBox(
                  height: Dimensions.height150,
                  width: Dimensions.width350,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.edgeInsert10 - 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/mobile.jpg',
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: '2020 Apple iPad Air 10.9',
                                size: Dimensions.fontSize16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: Dimensions.sizedBoxH10,
                              ),
                              CustomText(
                                text: '₹999',
                                size: Dimensions.fontSize16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                              ),
                              SizedBox(
                                height: Dimensions.sizedBoxH10,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: 'Quantity',
                                    size: Dimensions.fontSize16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.blackColor,
                                  ),
                                  SizedBox(
                                    width: Dimensions.sizedBoxW10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.cyyanColor,
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.borderRadius10 - 5),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        log('Minus');
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.sizedBoxW10,
                                  ),
                                  CustomText(
                                    text: '0',
                                    size: Dimensions.fontSize18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.blackColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.cyyanColor,
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.borderRadius10 - 5),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        log('Add');
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomText(
                text: 'Total',
                size: Dimensions.fontSize18 + 4,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: '₹999',
                size: Dimensions.fontSize18 + 4,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.sizedBoxH30,
          ),
          CustomElevatedBtn(
            text: 'Checkout',
            color: AppColors.whiteColor,
            bgColor: AppColors.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
