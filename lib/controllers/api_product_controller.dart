import 'package:device_fusion/models/rest_api_model.dart';
import 'package:device_fusion/services/api_product_services.dart';
import 'package:get/get.dart';

class ApiProductController extends GetxController {
  static ApiProductController get instance => Get.find();
  var productList = <RestApiProduct>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await ApiProductServices.fetchProduct();
    // print('Before ${productList.value}');
    if (products != []) {
      productList.value = products;
    }
    // print('AFter ${productList.value}');
  }
}
