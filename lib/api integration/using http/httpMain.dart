import 'package:flutter/cupertino.dart';
import 'package:flutterfeb/api%20integration/using%20http/view/productHome.dart';
import 'package:get/get.dart';
void main(){
  runApp(ApiHttp());
}
class ApiHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     home: ProductHome(),
   );
  }
}