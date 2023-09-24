import 'package:device_fusion/constants/app_colors.dart';
import 'package:device_fusion/constants/app_dimensions.dart';
import 'package:device_fusion/views/widgets/search_product_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.whiteColor,
            size: Dimensions.iconSize48,
          ),
        ),
        centerTitle: true,
        //!Search-Bar
        title: SizedBox(
          height: Dimensions.sizedBoxH50,
          width: Dimensions.width300 - 20,
          child: TextFormField(
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: InputDecoration(
              fillColor: AppColors.whiteColor,
              filled: true,
              suffixIcon: IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () {},
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.edgeInsert30)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.edgeInsert30)),
              hintText: 'Type "Phones"',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: Dimensions.edgeInsert10 + 10,
        ),
        child: const SearchProducts(),
      ),
    );
  }
}
