import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:flutter/material.dart';

class CustomFakeBottomSheet extends StatelessWidget {
  const CustomFakeBottomSheet({
    super.key,
    required this.width,
    required this.height,
    required this.child,
  });

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.borderRadius20 + 10),
          topRight: Radius.circular(Dimensions.borderRadius20 + 10),
        ),
      ),
      child: child,
    );
  }
}
