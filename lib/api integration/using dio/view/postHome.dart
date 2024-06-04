import 'package:flutter/material.dart';
import 'package:flutterfeb/api%20integration/using%20dio/controller/postController.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../utils/snackbars.dart';

class PostHome extends StatelessWidget {
  PostController controller = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
        backgroundColor: Colors.orange,
      ),
      body: Obx(() => SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: controller.isNetConnected.value == true
              ? controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.orange,
                      ),
                    )
                  : getData()
              : noInternet(context))),
      floatingActionButton: Obx(() =>
          controller.isNetConnected.value == true
              ? buildFAB()
              : Container()),
    );
  }
  FloatingActionButton buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        controller.isListDown.value
            ? controller.scrollListToUp()
            : controller.scrollListToDown();
      },
      child: FaIcon(controller.isListDown.value
          ? FontAwesomeIcons.arrowTrendUp
          : FontAwesomeIcons.arrowTrendDown),
    );
  }
  RefreshIndicator getData() {
    return RefreshIndicator(
      onRefresh: () => controller.fetchPosts(),
      child: ScrollablePositionedList.builder(
          itemScrollController: controller.scrollController,
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange[300],
                  child: Text(controller.posts[index].id!.toString()),
                ),
                title: Text(
                  controller.posts[index].title!,
                  style: MyTextThemes.textHeading,
                ),
                subtitle: Text(
                  controller.posts[index].body!,
                  style: MyTextThemes.bodyTextStyle,
                ),
              ),
            );
          }),
    );
  }

  Center noInternet(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset("assets/animations/nointernet.json"),
          MaterialButton(
            onPressed: () async {
              if (await InternetConnection().hasInternetAccess == true) {
                controller.fetchPosts();
              } else {
                showCustomSnackBar(context);
              }
            },
            shape: const StadiumBorder(),
            child: const Text("Retry"),
          )
        ],
      ),
    );
  }
}
