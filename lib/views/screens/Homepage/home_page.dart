import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/constants/app_icons.dart';
import 'package:device_fusion/controllers/hidden_drawer_controller.dart';
import 'package:device_fusion/views/screens/Favorites/favorites_screen.dart';
import 'package:device_fusion/views/screens/Profile/profile_screen.dart';
import 'package:device_fusion/views/screens/Search/search_screen.dart';
import 'package:device_fusion/views/widgets/tab_button_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt currentPageIndex = 0.obs;
    const bannerImage = [
      'assets/images/1.jpg',
      'assets/images/2.jpg',
      'assets/images/3.jpg',
      'assets/images/4.jpg',
      'assets/images/5.jpg',
    ];

    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.edgeInsert40),
              height: Dimensions.height120,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //!Humburger-Icon
                  InkWell(
                    onTap: () => HiddenController.instance.toggleDrawer(),
                    child: Image.asset(
                      'assets/images/Hamburger.png',
                      width: Dimensions.hamburgerWidth30,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.sizedBoxH10,
                  ),
                  SizedBox(
                    height: Dimensions.height48,
                    width: Dimensions.width250,
                    //!Search-Icon
                    child: InkWell(
                      onTap: () => Get.to(() => const SearchScreen()),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius:
                              BorderRadius.circular(Dimensions.sizedBoxH30),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.edgeInsert10 + 6),
                                child: Center(
                                    child: CustomText(
                                  text: 'search',
                                  size: Dimensions.fontSize16,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.primaryColor,
                                )),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: Dimensions.edgeInsert10 + 2),
                              child: Icon(
                                Icons.search,
                                size: Dimensions.iconSize34 - 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      log('Favorites');
                      Get.to(() => const MyFavoritesScreen());
                    },
                    icon: Iconify(
                      AppIcons.favoriteIcon,
                      size: Dimensions.iconSize34,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),

            //!Carosuel Banner.
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  currentPageIndex.value = index;
                },
                height: Dimensions.height240,
                aspectRatio: 5.0,
                enlargeCenterPage: true,
              ),
              items: bannerImage
                  .map(
                    (item) => Container(
                      clipBehavior: Clip.hardEdge,
                      margin: EdgeInsets.all(Dimensions.edgeInsert10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions.borderRadius20,
                        ),
                      ),
                      child: Image.asset(
                        item,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Obx(
              () => DotsIndicator(
                dotsCount: bannerImage.length,
                position: currentPageIndex.value,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            // //!Tab's item
            const CustomTabBar(),
            //! See all Text here
            Padding(
              padding: EdgeInsets.only(right: Dimensions.edgeInsert10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    log('See all ->');
                    Get.to(
                      () => const ProfileScreen(),
                    );
                  },
                  child: CustomText(
                    text: 'See all ->',
                    size: Dimensions.fontSize16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
