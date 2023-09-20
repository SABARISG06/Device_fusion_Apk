import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/controllers/tab_bar_controller.dart';
import 'package:device_fusion/views/widgets/product_carousuel_widget.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          labelPadding: EdgeInsets.only(
            top: Dimensions.edgeInsert10,
            right: Dimensions.edgeInsert30 - 5,
          ),
          labelColor: AppColors.whiteColor,
          unselectedLabelColor: AppColors.greyColor,
          controller: TabBarController.instance.controller,
          indicatorColor: AppColors.primaryColor,
          dividerColor: AppColors.mainColor,
          tabs: List.generate(
            TabBarController.instance.listItems.length,
            (index) => Tab(
              text: TabBarController.instance.listItems[index],
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height350,
          child: TabBarView(
            controller: TabBarController.instance.controller,
            children: const [
              ProductCarousel(),
              ProductCarousel(),
              ProductCarousel(),
              ProductCarousel(),
            ],
          ),
        )
      ],
    );
  }
}
