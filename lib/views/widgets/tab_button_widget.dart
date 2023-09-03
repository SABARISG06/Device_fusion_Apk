import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/product_carousuel_widget.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  static const listItems = [
    'Wearable',
    'Laptops',
    'Headphones',
    'Phones',
  ];

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
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
          controller: tabController,
          indicatorColor: AppColors.primaryColor,
          dividerColor: AppColors.mainColor,
          tabs: List.generate(
            CustomTabBar.listItems.length,
            (index) => Tab(
              text: CustomTabBar.listItems[index],
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height350,
          child: TabBarView(
            controller: tabController,
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
