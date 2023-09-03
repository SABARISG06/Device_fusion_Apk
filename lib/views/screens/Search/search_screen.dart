import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/product_carousuel_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  static const listItems = [
    'Wearable',
    'Laptops',
    'Headphones',
    'Phones',
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Center(
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                labelPadding:
                    EdgeInsets.only(top: Dimensions.edgeInsert30, right: 25),
                labelColor: AppColors.whiteColor,
                unselectedLabelColor: const Color.fromARGB(255, 171, 171, 171),
                controller: tabController,
                indicatorColor: AppColors.primaryColor,
                tabs: List.generate(
                  listItems.length,
                  (index) => Tab(
                    text: listItems[index],
                  ),
                ),
              ),
              SizedBox(
                height: 350,
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
          ),
        ));
  }
}
