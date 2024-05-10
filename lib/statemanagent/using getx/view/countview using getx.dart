import 'package:flutter/material.dart';
import 'package:flutterfeb/statemanagent/using%20getx/controller/countControllerrr.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    home: Get_main(),
  ));
}

class Get_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get.put - to make the controller class available in the entire widget tree
    final CountCntroller controller = Get.put(CountCntroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///Obx() = used to make the widget observable
            Obx(() => Text(
                  "Count : ${controller.count}",
                   style: MyTextThemes.textHeading,
                )),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: const Text("Increment")),
              ElevatedButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  child: const Text("Decrement")),
            ])
          ],
        ),
      ),
    );
  }
}
