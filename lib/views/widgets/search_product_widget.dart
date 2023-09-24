import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/dummy%20data/search_dummy_data.dart';
import 'package:device_fusion/views/screens/Single_Product_temp/singleproduct_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchProducts extends StatelessWidget {
  const SearchProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: SearchData.listOfMobiles.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Get.to(() => const SingleProductScreen()),
                child: Card(
                  shadowColor: AppColors.whiteColor,
                  color: AppColors.mainColor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            Dimensions.borderRadius20 - 4),
                        child: Image.asset(
                          SearchData.listOfMobiles[index].imageUrl,
                          height: Dimensions.height150,
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.sizedBoxH20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              SearchData.listOfMobiles[index].title,
                              style: GoogleFonts.raleway(
                                color: AppColors.whiteColor,
                                fontSize: Dimensions.fontSize18,
                              ),
                            ),
                            Row(
                              children: [
                                Wrap(
                                  children: List.generate(
                                    5,
                                    (index) => Icon(
                                      Icons.star,
                                      color: AppColors.primaryColor,
                                      size: Dimensions.iconSize34 - 10,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.sizedBoxW10,
                                ),
                                Text(
                                  '(3.9 users)',
                                  style: GoogleFonts.raleway(
                                    color: AppColors.whiteColor,
                                    fontSize: Dimensions.fontSize16 - 4,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              SearchData.listOfMobiles[index].price,
                              style: GoogleFonts.raleway(
                                color: AppColors.whiteColor,
                                fontSize: Dimensions.fontSize18,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.sizedBoxH10,
                            ),
                            Text(
                              SearchData.listOfMobiles[index].shipping,
                              style: GoogleFonts.raleway(
                                color: const Color.fromARGB(255, 0, 255, 8),
                                fontSize: Dimensions.fontSize16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
