import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/constants/app_icons.dart';
import 'package:device_fusion/views/screens/Phonenumber/phone_number_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class OtherLoginIcon extends StatelessWidget {
  const OtherLoginIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Todo:- Need to change in listview builder.
        IconButton(
          onPressed: () {},
          icon: Iconify(
            AppIcons.facebookIcon,
            size: Dimensions.sizedBoxH30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Iconify(
            AppIcons.googleIcon,
            size: Dimensions.sizedBoxH30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Iconify(
            AppIcons.twitterIcon,
            size: Dimensions.sizedBoxH30,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.to(() => const PhoneNumberScreen());
          },
          icon: Iconify(
            AppIcons.phoneIcon,
            size: Dimensions.sizedBoxH30,
          ),
        ),
      ],
    );
  }
}
