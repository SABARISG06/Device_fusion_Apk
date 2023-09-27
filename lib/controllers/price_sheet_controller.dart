import 'dart:io';

import 'package:device_fusion/controllers/api_product_controller.dart';
import 'package:device_fusion/dummy%20data/headphone_dummy_data.dart';
import 'package:device_fusion/dummy%20data/laptop_dummy_data.dart';
import 'package:device_fusion/dummy%20data/tablet_dummy_data.dart';
import 'package:device_fusion/dummy%20data/watch_dummy_data.dart';
import 'package:device_fusion/models/rest_api_model.dart';
import 'package:device_fusion/models/sub_category_model.dart';
import 'package:get/get.dart';

class SortingListController extends GetxController {
  static SortingListController get instance => Get.find();

  var groupValue = 1.obs;
  List<SubCategoryModel> mobileProduct = SubCategory.listOfMobiles.obs;
  List<SubCategoryModel> watchProduct = SubWatchCategory.listOfWatch.obs;
  List<SubCategoryModel> headPhoneProduct =
      SubHeadPhoneCategory.listOfHeadPhones.obs;
  List<SubCategoryModel> laptopProduct = SubLaptopCategory.listOfLaptops.obs;
  List<SubCategoryModel> tabletProduct = SubTabletCategory.listOfTablets.obs;
  List<RestApiProduct> restAPIProduct =
      ApiProductController.instance.productList;

  int _comparePrices(String priceA, String priceB) {
    final double valueA = _parsePrice(priceA);
    final double valueB = _parsePrice(priceB);
    return valueA.compareTo(valueB);
  }

  double _parsePrice(String price) {
    final cleanedPrice = price.replaceAll('₹', '').replaceAll(',', '');
    return double.tryParse(cleanedPrice) ?? 0.0;
  }

  void isPhoneSorting() {
    mobileProduct.sort((a, b) {
      if (groupValue.value == 1) {
        return a.title.compareTo(b.title); // Ascending order by title
      } else if (groupValue.value == 2) {
        return b.title.compareTo(a.title); // Descending order by title
      } else if (groupValue.value == 3) {
        return _comparePrices(b.price, a.price); // High to Low by price
      } else if (groupValue.value == 4) {
        return _comparePrices(a.price, b.price); // Low to High by price
      }
      exit(0); // Default case
    });
  }

  void isWatchSorting() {
    watchProduct.sort((a, b) {
      if (groupValue.value == 1) {
        return a.title.compareTo(b.title); // Ascending order by title
      } else if (groupValue.value == 2) {
        return b.title.compareTo(a.title); // Descending order by title
      } else if (groupValue.value == 3) {
        return _comparePrices(b.price, a.price); // High to Low by price
      } else if (groupValue.value == 4) {
        return _comparePrices(a.price, b.price); // Low to High by price
      }
      exit(0); // Default case
    });
  }

  void isHeadPhoneSorting() {
    headPhoneProduct.sort((a, b) {
      if (groupValue.value == 1) {
        return a.title.compareTo(b.title); // Ascending order by title
      } else if (groupValue.value == 2) {
        return b.title.compareTo(a.title); // Descending order by title
      } else if (groupValue.value == 3) {
        return _comparePrices(b.price, a.price); // High to Low by price
      } else if (groupValue.value == 4) {
        return _comparePrices(a.price, b.price); // Low to High by price
      }
      return 0;
    });
  }

  void isLaptopSorting() {
    laptopProduct.sort((a, b) {
      if (groupValue.value == 1) {
        return a.title.compareTo(b.title); // Ascending order by title
      } else if (groupValue.value == 2) {
        return b.title.compareTo(a.title); // Descending order by title
      } else if (groupValue.value == 3) {
        return _comparePrices(b.price, a.price); // High to Low by price
      } else if (groupValue.value == 4) {
        return _comparePrices(a.price, b.price); // Low to High by price
      }
      return 0;
    });
  }

  void isTabletSorting() {
    tabletProduct.sort((a, b) {
      if (groupValue.value == 1) {
        return a.title.compareTo(b.title); // Ascending order by title
      } else if (groupValue.value == 2) {
        return b.title.compareTo(a.title); // Descending order by title
      } else if (groupValue.value == 3) {
        return _comparePrices(b.price, a.price); // High to Low by price
      } else if (groupValue.value == 4) {
        return _comparePrices(a.price, b.price); // Low to High by price
      }
      return 0;
    });
  }

  void isRestAPISorting() {
    restAPIProduct.sort((a, b) {
      if (groupValue.value == 1) {
        return a.title.compareTo(b.title); // Ascending order by title
      } else if (groupValue.value == 2) {
        return b.title.compareTo(a.title); // Descending order by title
      } else if (groupValue.value == 3) {
        return _comparePrices(
            b.price.toString(), a.price.toString()); // High to Low by price
      } else if (groupValue.value == 4) {
        return _comparePrices(
            a.price.toString(), b.price.toString()); // Low to High by price
      }
      return 0;
    });
  }
}
