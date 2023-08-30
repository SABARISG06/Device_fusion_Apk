import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.sizedBoxH10),
      width: Dimensions.sizedBoxH50 + 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.borderRadius10),
      ),
      child: Divider(
        height: Dimensions.sizedBoxH20,
        thickness: 3.5,
        color: const Color(0xFF868686),
      ),
    );
  }
}
