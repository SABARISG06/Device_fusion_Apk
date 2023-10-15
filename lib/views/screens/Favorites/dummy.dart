import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/constants/app_icons.dart';
import 'package:device_fusion/views/widgets/text_button_widget.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class Dummy extends StatelessWidget {
  const Dummy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              childAspectRatio: 2 / 3.1,
              crossAxisCount: 2,
              children: [
                SizedBox(
                  height: Dimensions.height400,
                  width: Dimensions.width200,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.edgeInsert10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Iconify(
                              AppIcons.favoriteIcon,
                              size: Dimensions.iconSize34 - 10,
                            ),
                          ),
                          Image.asset(
                            'assets/images/mobile.jpg',
                            fit: BoxFit.contain,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.17,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH10 - 5,
                          ),
                          CustomText(
                            text:
                                'OnePlus Nord CE 2 Lite 5G (Black Dusk, 128 GB) (6 GB RAM)',
                            size: Dimensions.sizedBoxH10,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH10 - 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Wrap(
                                children: List.generate(
                                  5,
                                  (index) => Icon(
                                    Icons.star_border,
                                    size: Dimensions.iconSize34 - 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          CustomTextBtn(
                            text: 'Add to card',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height400,
                  width: Dimensions.width200,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.edgeInsert10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Iconify(
                              AppIcons.favoriteIcon,
                              size: Dimensions.iconSize34 - 10,
                            ),
                          ),
                          Image.asset(
                            'assets/images/mobile.jpg',
                            fit: BoxFit.contain,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.17,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH10 - 5,
                          ),
                          CustomText(
                            text:
                                'OnePlus Nord CE 2 Lite 5G (Black Dusk, 128 GB) (6 GB RAM)',
                            size: Dimensions.sizedBoxH10,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            height: Dimensions.sizedBoxH10 - 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Wrap(
                                children: List.generate(
                                  5,
                                  (index) => Icon(
                                    Icons.star_border,
                                    size: Dimensions.iconSize34 - 10,
                                  ),
                                ),
                              )
                            ],
                          ),
                          CustomTextBtn(
                            text: 'Add to card',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
