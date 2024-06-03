import 'package:http/http.dart' as http;
import '../model/productModel.dart';

class HttpService {
  static Future<List<Products>> getProducts() async {
    var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var data = response.body; // type of body is String
      return productsFromJson(data);
    } else {
      throw Exception();
    }
  }
}
