import 'package:flutter/material.dart';
import 'package:flutterfeb/statemanagent/using%20provider/controller/count_controller.dart';
import 'package:flutterfeb/utils/textThemes.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Provider example"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Have Pushed the button this Many times",
              style: MyTextThemes.textHeading,
            ),
            const SizedBox(
              height: 20,
            ),
            ///using consumer
            Consumer<CounterProvider>(
                builder: (context, counterController, widget) {
              return Text(
                '${counterController.counter.value}',
                style: MyTextThemes.textHeading,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //counterCountroller.incrementCounter();
          Provider.of<CounterProvider>(context, listen: false)
              .incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
