import 'package:device_fusion/utils/app_colors.dart';
import 'package:device_fusion/utils/app_dimensions.dart';
import 'package:device_fusion/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatefulWidget {
  const ProductCarousel({super.key});

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  var _currentPage = 0.0;
  double scaleFactor = 0.8;
  static double height = Dimensions.height215;
  static double width = Dimensions.width212;

  final _pageController = PageController(viewportFraction: 0.6);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
        // print(_currentPage);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Matrix4 scalingUpandDown(int index) {
    //!Scaling up and down
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPage.floor()) {
      //currscale for scaling.
      var currScale = 1 - (_currentPage - index) * (1 - scaleFactor);
      //currTrans for right transform
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } //?else if
    else if (index == _currentPage.floor() + 1) {
      var currScale =
          scaleFactor + (_currentPage - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } //?else if
    else if (index == _currentPage.floor() - 1) {
      var currScale = 1 - (_currentPage - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } //*else
    else {
      matrix = Matrix4.diagonal3Values(1, scaleFactor, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 0);
    }
    return matrix;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: Dimensions.height300,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 4,
        itemBuilder: (context, index) => Transform(
          transform: scalingUpandDown(index),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: Dimensions.sizedBoxH10,
                child: SizedBox(
                  width: width,
                  height: height,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimensions.borderRadius20 + 10),
                    ),
                    elevation: Dimensions.sizedBoxH10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Dimensions.sizedBoxH50,
                        ),
                        CustomText(
                          text: 'MOTOROLA G32(Mineral Gray, 128 GB)',
                          size: Dimensions.fontSize16,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center,
                          color: AppColors.blackColor,
                        ),
                        CustomText(
                          text: '₹18,999',
                          size: Dimensions.fontSize16,
                          fontWeight: FontWeight.w700,
                          textDecoration: TextDecoration.lineThrough,
                          color: AppColors.blackColor,
                        ),
                        CustomText(
                          text: "?",
                          size: Dimensions.fontSize16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //!Circular avatar
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: Dimensions.elevation80,
                  backgroundImage:
                      const AssetImage('assets/images/connection.png'),
                ),
              ),
              //!Arrow icon
              Positioned(
                bottom: Dimensions.sizedBoxH15,
                left: Dimensions.left160,
                child: Container(
                  width: Dimensions.width64,
                  height: Dimensions.height64,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(25)),
                    color: Color(0xffd9d9d9),
                  ),
                  child: Icon(
                    Icons.chevron_right,
                    size: Dimensions.iconSize50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
