import 'package:get/get.dart';

//to make a variable observable use obs or RxDart class
//to make a widget observable using get use Obx() or GetxBuilder()

class CountCntroller extends GetxController {

  var count = 0.obs; // obs means this integer value is observable

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}
