import 'package:flutterfeb/api%20integration/using%20http/service/apiService.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    readProducts();
    super.onInit();
  }

  void readProducts() async {
    try {
      isLoading(true);
      var products = await HttpService.getProducts();
      if (products != null) {
        productList.value = products;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
