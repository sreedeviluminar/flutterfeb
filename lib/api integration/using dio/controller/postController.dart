import 'package:flutter/animation.dart';
import 'package:flutterfeb/api%20integration/using%20dio/service/dioService.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/postModel.dart';

class PostController extends GetxController {
  RxList<PostModel> posts = RxList(); //same as var posts = [].obs;
  RxBool isLoading = true.obs;
  RxBool isListDown = false.obs; //to control scrollable positioned list position
  RxBool isNetConnected = true.obs;
  var scrollController = ItemScrollController();

  void isInternetConnected() async {
    isNetConnected.value = await InternetConnection().hasInternetAccess;
  }

  fetchPosts() async {
    isInternetConnected();
    isLoading.value = true;
    var response = await DioService().getPosts();
    if (response.statusCode == 200) {
      response.data.forEach((data) {
        posts.add(PostModel.fromJson(data));
        print(posts);
      });
      isLoading.value = false;
    }
  }

  scrollListToDown() {
    scrollController.scrollTo(
        index: posts.length,
        duration: const Duration(seconds: 3),
        curve: Curves.easeInOutCirc);
    isListDown.value = true;
  }

  scrollListToUp() {
    scrollController.scrollTo(
        index: 0,
        duration: const Duration(seconds: 3),
        curve: Curves.fastEaseInToSlowEaseOut);
    isListDown.value = false;
  }

  @override
  void onInit() {
    fetchPosts();
    isInternetConnected();
    super.onInit();
  }
}
