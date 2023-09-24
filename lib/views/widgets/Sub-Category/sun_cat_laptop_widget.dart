import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/dummy%20data/laptop_dummy_data.dart';
import 'package:device_fusion/views/screens/Single_Product_temp/singleproduct_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SubCategoryLaptop extends StatelessWidget {
  const SubCategoryLaptop({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: SubLaptopCategory.listOfTablets.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => Get.to(() => const SingleProductScreen()),
                child: Card(
                  shadowColor: AppColors.whiteColor,
                  color: AppColors.mainColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            Dimensions.borderRadius20 - 4),
                        //!Image
                        child: Image.asset(
                          SubLaptopCategory.listOfTablets[index].imageUrl,
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
                            //!title
                            Text(
                              SubLaptopCategory.listOfTablets[index].title,
                              style: GoogleFonts.raleway(
                                color: AppColors.whiteColor,
                                fontSize: Dimensions.fontSize18,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: Dimensions.sizedBoxH10,
                            ),
                            //!Star
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
                            SizedBox(
                              height: Dimensions.sizedBoxH10,
                            ),
                            //!Price
                            Text(
                              SubLaptopCategory.listOfTablets[index].price,
                              style: GoogleFonts.raleway(
                                color: AppColors.whiteColor,
                                fontSize: Dimensions.fontSize18,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.sizedBoxH10,
                            ),
                            //!FreeShipping
                            Text(
                              SubLaptopCategory.listOfTablets[index].shipping,
                              style: GoogleFonts.raleway(
                                color: const Color.fromARGB(255, 0, 255, 8),
                                fontSize: Dimensions.fontSize16,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.sizedBoxH10,
                            ),
                            //!Info
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                SubLaptopCategory.listOfTablets[index]
                                    .prodHighlights!.length,
                                (index) => Container(
                                  margin: EdgeInsets.all(
                                      Dimensions.edgeInsert10 - 5),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: AppColors.whiteColor),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        Dimensions.edgeInsert10 - 5),
                                    child: Text(
                                      SubLaptopCategory.listOfTablets[index]
                                          .prodHighlights![0],
                                      style: GoogleFonts.raleway(
                                        color: AppColors.whiteColor,
                                        fontSize: Dimensions.fontSize16 - 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.sizedBoxH10,
                            ),
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
