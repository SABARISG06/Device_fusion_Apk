import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/views/widgets/text_form_feild_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: SizedBox(
          height: 209,
          width: 311,
          // child: CustomTextFormField(
          //   text: 'Hello',
          //   prefixIcon: Icon(Icons.abc),
          // )
        ),
      ),
    );
  }
}
