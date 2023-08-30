import 'package:get/get.dart';

class Dimensions {
  Dimensions._();

  static double screenWidth = Get.context!.width;
  static double screenHeight = Get.context!.height;

  //? Padding,margin

  static double edgeInsert50 = screenHeight / 17.8;
  static double edgeInsert40 = screenHeight / 22.25;
  static double edgeInsert30 = screenHeight / 29.6;
  static double edgeInsert10 = screenHeight / 89;

  //? FontSize
  static double fontSize60 = screenHeight / 14.8;
  static double fontSize32 = screenHeight / 27.8;
  static double fontSize18 = screenHeight / 49.4;
  static double fontSize16 = screenHeight / 55.6;

  //?Splash->Image'S
  static double splashWidth392 = screenWidth / 1.04;
  static double splashHeight441 = screenHeight / 2.01;

  static double hamburgerWidth30 = screenWidth / 13.7; //(Hamburger)

  //?SizedBox
  static double sizedBoxH50 = screenHeight / 17.8;
  static double sizedBoxH30 = screenHeight / 29.6;
  static double sizedBoxH20 = screenHeight / 44.5;
  static double sizedBoxH15 = screenHeight / 59.33;
  static double sizedBoxH10 = screenHeight / 89;
  static double sizedBoxW10 = screenWidth / 41.1;

  //?Container
  static double height64 = screenHeight / 13.90;
  static double width64 = screenWidth / 6.42;

  static double width60 = screenWidth / 6.85;

  static double width160 = screenWidth / 2.5;
  static double height160 = screenHeight / 5.5;
  static double bottom80 = screenHeight / 11.12;
  static double left160 = screenWidth / 2.58;
  static double height120 = screenHeight / 7.41;

  static double height240 = screenHeight / 3.70;
  static double height300 = screenHeight / 2.97;
  static double width300 = screenWidth / 1.37;

  static double height190 = screenHeight / 4.68;

  static double width100 = screenWidth / 4.11;
  static double height100 = screenHeight / 8.9;
  static double width250 = screenWidth / 1.64;
  static double height150 = screenHeight / 5.93;
  static double height180 = screenHeight / 4.94;

  static double width180 = screenWidth / 2.28;
  static double width350 = screenWidth / 1.17;
  static double height535 = screenHeight / 1.66;

  static double height400 = screenHeight / 2.22;
  static double width200 = screenWidth / 2.05;
  static double height585 = screenHeight / 1.52;
  static double height220 = screenHeight / 4.04;
  static double height75 = screenHeight / 11.86;
  static double height48 = screenHeight / 18.5;

  //?Border-Radius
  static double borderRadius10 = screenHeight / 89;
  static double borderRadius20 = screenHeight / 44.5;

  static double elevation80 = screenHeight / 11.13;

  //? Icons
  static double iconSize48 = screenHeight / 18.5;
  static double iconSize34 = screenHeight / 26.17;
  static double iconSize50 = screenHeight / 17.8;

  //? GridView
  static double crossAxis30 = screenHeight / 29.6;
  static double mainAxis40 = screenHeight / 22.2;

  //? Login,Create account -> image-size
  static double width414 = screenWidth / 1.03;
  static double height291 = screenHeight / 3.05;

  //? Custom-BottomSheet
  static double width413 = screenWidth / 0.99;
  static double right40 = screenWidth / 10.27;

  static double height620 = screenHeight / 1.43;
  static double width210 = screenWidth / 1.95;
  static double height215 = screenHeight / 4.14;
  static double width212 = screenWidth / 1.94;

  //? Button-Size
  static double height70 = screenHeight / 12.7;
  static double width314 = screenWidth / 1.31;
}
