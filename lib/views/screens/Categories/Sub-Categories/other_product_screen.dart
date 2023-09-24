import 'package:device_fusion/constants/app_colors.dart';
import 'package:flutter/material.dart';

class RestApiProduct extends StatelessWidget {
  const RestApiProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(child: Text('RestApiProduct Page')),
    );
  }
}
