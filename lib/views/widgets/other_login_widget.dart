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
        //Todo:- Need to rotate listview builder.
        IconButton(
          onPressed: () {},
          icon: const Iconify(
            AppIcons.facebookIcon,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Iconify(
            AppIcons.googleIcon,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Iconify(
            AppIcons.twitterIcon,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {
            Get.to(() => const PhoneNumberScreen());
          },
          icon: const Iconify(
            AppIcons.phoneIcon,
            size: 30,
          ),
        ),
      ],
    );
  }
}
