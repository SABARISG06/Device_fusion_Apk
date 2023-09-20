import 'dart:developer';
import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const profileItems = [
    'Edit Profile',
    'Shopping address',
    'Order history',
    'Cards',
    'Notifications'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Container(
        margin: EdgeInsets.only(
            left: Dimensions.sizedBoxW10 + 20,
            top: Dimensions.sizedBoxH50 + 10,
            right: Dimensions.sizedBoxW10 + 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'My Profile',
              size: Dimensions.fontSize32 + 2,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: Dimensions.sizedBoxH30 + 10,
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                //!Dp and address card
                SizedBox(
                  height: Dimensions.height180,
                  width: Dimensions.width350,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Dimensions.borderRadius20,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Dimensions.sizedBoxH50 + 5,
                        ),
                        CustomText(
                          text: 'Husky Leo',
                          size: Dimensions.fontSize18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor,
                        ),
                        SizedBox(
                          height: Dimensions.sizedBoxH10 - 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(IconlyLight.location),
                            SizedBox(
                              width: Dimensions.sizedBoxW10 - 5,
                            ),
                            SizedBox(
                              width: Dimensions.width210,
                              child: CustomText(
                                text:
                                    'No 06, Vivekananda street Dubai main road, Dubai -661316616',
                                size: Dimensions.fontSize16,
                                fontWeight: FontWeight.normal,
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -Dimensions.sizedBoxH30,
                  child: CircleAvatar(
                    radius: Dimensions.sizedBoxH50,
                    backgroundImage: const AssetImage(
                        'assets/images/Listening to Music - 960x960.png'),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Dimensions.sizedBoxH10,
            ),
            //!List of profile items.
            Expanded(
              child: ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: profileItems.length,
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Dimensions.borderRadius20),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: ListTile(
                    onTap: () {
                      log(profileItems[index]);
                    },
                    title: CustomText(
                      text: profileItems[index],
                      size: Dimensions.fontSize18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      size: Dimensions.sizedBoxH30,
                    ),
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
