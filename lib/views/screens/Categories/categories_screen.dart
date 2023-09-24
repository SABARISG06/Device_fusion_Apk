import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/constants/app_pages.dart';
import 'package:device_fusion/models/categories_model.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
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
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.sizedBoxH20,
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              crossAxisSpacing: Dimensions.sizedBoxH10,
              mainAxisSpacing: Dimensions.sizedBoxH10,
              itemCount: CategoriesData.listOfItems.length,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(Dimensions.edgeInsert10),
                margin: EdgeInsets.all(Dimensions.edgeInsert10),
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    //!Card
                    SizedBox(
                      width: Dimensions.width160,
                      height: Dimensions.height190,
                      child: InkWell(
                        onTap: () {
                          subCatergories(index);
                        },
                        child: Card(
                          elevation: 5,
                          shadowColor: AppColors.whiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                Dimensions.borderRadius10 - 5),
                          ),
                        ),
                      ),
                    ),
                    //!Text
                    Positioned(
                      bottom: Dimensions.sizedBoxH50,
                      child: CustomText(
                        text: CategoriesData.listOfItems[index].title,
                        fontWeight: FontWeight.w600,
                        size: Dimensions.fontSize16,
                        color: AppColors.blackColor,
                      ),
                    ),
                    //!image
                    Positioned(
                      bottom: Dimensions.bottom80 + 10,
                      child: SizedBox(
                        width: Dimensions.width100,
                        height: Dimensions.height150,
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                Dimensions.borderRadius10 - 5),
                          ),
                          child: Image.asset(
                            CategoriesData.listOfItems[index].imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              staggeredTileBuilder: (index) {
                return StaggeredTile.count(1, index.isEven ? 1.20 : 1.30);
              },
            ),
          ),
        ],
      ),
    );
  }

  void subCatergories(index) {
    switch (CategoriesData.listOfItems[index].title) {
      case 'Phones':
        Get.toNamed(AppPages.subCatPhones);
        break;
      case 'Watches':
        Get.toNamed(AppPages.subCatWatches);
        break;
      case 'Headphones':
        Get.toNamed(AppPages.subCatHeadphones);
        break;
      case 'Laptops':
        Get.toNamed(AppPages.subCatLaptop);
        break;
      case 'Tablets':
        Get.toNamed(AppPages.subCatTablets);
        break;
      case 'Other Products':
        Get.toNamed(AppPages.subCatOtherProducts);
        break;
      default:
    }
  }
}
