import 'package:device_fusion/models/rest_api_model.dart';
import 'package:http/http.dart' as http;

class ApiProductServices {
  static var client = http.Client();
  static Future<List<RestApiProduct>> fetchProduct() async {
    try {
      var response =
          await client.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return restApiProductFromJson(jsonString);
      } else {
        // print('Failed to fetch products. Status code: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      // print('Error fetching products: $e');
      return [];
    }
  }
}
