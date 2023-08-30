import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  static const categoriesItems = [
    'Phones',
    'Watches',
    'Headphones',
    'Laptops',
    'Other Products'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.mainColor,
        title: CustomText(
          text: 'Categories',
          size: Dimensions.fontSize18 + 2,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        crossAxisSpacing: Dimensions.sizedBoxH10,
        mainAxisSpacing: Dimensions.sizedBoxH10,
        itemCount: categoriesItems.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(Dimensions.edgeInsert10),
          margin: EdgeInsets.all(Dimensions.edgeInsert10),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: Dimensions.width160,
                height: Dimensions.height190,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Dimensions.borderRadius10 - 5),
                  ),
                ),
              ),
              Positioned(
                bottom: Dimensions.sizedBoxH50,
                child: CustomText(
                  text: categoriesItems[index],
                  fontWeight: FontWeight.w600,
                  size: Dimensions.fontSize16,
                  color: AppColors.blackColor,
                ),
              ),
              Positioned(
                bottom: Dimensions.bottom80,
                child: SizedBox(
                  width: Dimensions.width100,
                  height: Dimensions.height150,
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimensions.borderRadius10 - 5),
                    ),
                    child: Image.asset(
                      'assets/images/mobile.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(1, index.isEven ? 1.22 : 1.25);
        },
      ),
    );
  }
}
