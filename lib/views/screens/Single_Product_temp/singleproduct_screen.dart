import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/constants/app_icons.dart';
import 'package:device_fusion/views/widgets/fake_bottom_sheet_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({super.key});

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  List<Color> productColor = [
    Colors.red,
    Colors.black,
    Colors.purpleAccent,
  ];
  List<String> highlightsText = [
    '128 GB ROM.',
    '15.49 cm (6.1 inch) Super Retina XDR Display.',
    '12MP + 12MP | 12MP Front Camera.',
    'A15 Bionic Chip, 6 Core Processor Processor.'
  ];
  List<String> generalText = [
    'Handset, USB-C to Lightning Cable, Documentation',
    'Model Number MPVA3HN/A',
    'Model Name iPhone 14',
    'SIM Type Dual Sim(Nano + eSIM)',
    'Hybrid Sim Slot No',
    'Touchscreen Yes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          Stack(
            children: [
              //Todo:- image carusouel as to do.
              Image.asset(
                'assets/images/apple.png',
                fit: BoxFit.contain,
                width: double.maxFinite,
                height: Dimensions.height300,
              ),
              //!Back-Icon
              Positioned(
                top: Dimensions.sizedBoxH50,
                left: Dimensions.sizedBoxH10,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chevron_left,
                    size: Dimensions.iconSize34 + 2,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              //!Favorite-Icon
              Positioned(
                right: Dimensions.right40,
                top: Dimensions.edgeInsert40,
                child: IconButton(
                  onPressed: () {},
                  icon: Iconify(
                    AppIcons.favoriteIcons,
                    size: Dimensions.iconSize34 - 2,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: Dimensions.edgeInsert40,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: AppColors.whiteColor,
                    size: Dimensions.iconSize34 - 2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.sizedBoxH10 - 5,
          ),
          Expanded(
            child: CustomFakeBottomSheet(
              width: Dimensions.width413,
              height: Dimensions.height585,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.edgeInsert30),
                  child: Column(
                    children: [
                      CustomText(
                        text: 'APPLE iPhone 14 ((PRODUCT) RED,128 GB)',
                        size: Dimensions.fontSize18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.greyColor,
                      ),
                      SizedBox(
                        height: Dimensions.sizedBoxH15,
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
                            width: Dimensions.sizedBoxW10 - 5,
                          ),
                          const Text('(3.9 users) Reviewed'),
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.sizedBoxH15,
                      ),
                      CustomText(
                        text: 'Colors',
                        size: Dimensions.fontSize18 + 2,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                      SizedBox(
                        height: Dimensions.height100,
                        width: Dimensions.width250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: productColor.length,
                          itemBuilder: (context, index) => Padding(
                            padding:
                                EdgeInsets.all(Dimensions.edgeInsert10 + 2),
                            child: CircleAvatar(
                              radius: Dimensions.sizedBoxH30,
                              backgroundColor: productColor[index],
                            ),
                          ),
                        ),
                      ),
                      //!Highlight text.
                      CustomText(
                        text: 'Highlights',
                        size: Dimensions.borderRadius20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                      SizedBox(
                        height: Dimensions.height220,
                        width: Dimensions.width300,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(0),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: highlightsText.length,
                          itemBuilder: (context, index) => Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.all(Dimensions.edgeInsert10 + 4),
                                child: const Text('\u2022'),
                              ),
                              Expanded(
                                child: CustomText(
                                  text: highlightsText[index],
                                  size: Dimensions.fontSize16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //!General text.
                      CustomText(
                        text: 'General',
                        size: Dimensions.sizedBoxH20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blackColor,
                      ),
                      SizedBox(
                        height: Dimensions.height300,
                        width: Dimensions.width300,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(1),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: generalText.length,
                          itemBuilder: (context, index) => Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.all(Dimensions.edgeInsert10 + 4),
                                child: const Text('\u2022'),
                              ),
                              Expanded(
                                child: CustomText(
                                  text: generalText[index],
                                  size: Dimensions.fontSize16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blackColor,
                                ),
                              ),
                            ],
                          ),
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
      //!BottomNavigation.
      bottomNavigationBar: Container(
        color: AppColors.whiteColor,
        height: Dimensions.fontSize60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText(
              text: 'Total : ₹67,999',
              size: Dimensions.fontSize18,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(Dimensions.width180, Dimensions.sizedBoxH50),
                backgroundColor: AppColors.primaryColor,
              ),
              label: CustomText(
                fontWeight: FontWeight.w500,
                text: 'Add to cart',
                size: Dimensions.fontSize18,
                color: AppColors.whiteColor,
              ),
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: AppColors.whiteColor,
                size: Dimensions.iconSize34 - 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
