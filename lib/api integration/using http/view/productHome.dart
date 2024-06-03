import 'package:flutter/material.dart';
import 'package:flutterfeb/api%20integration/using%20http/controller/productController.dart';
import 'package:get/get.dart';
import '../widget/productTile.dart';

class ProductHome extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: SizedBox(
        child: Obx(() {
          if (productController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
              itemCount: productController.productList.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:.5
                ),
                itemBuilder: (context, index) {
                  return ProductTiles(
                      productController.productList[index]);
                });
          }
        }),
      ),
    );
  }
}
