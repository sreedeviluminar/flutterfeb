import 'package:flutter/material.dart';
import 'package:flutterfeb/statemanagent/using%20provider/controller/count_controller.dart';
import 'package:flutterfeb/statemanagent/using%20provider/view/counterScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ProviderMain());
}

class ProviderMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: CounterScreen(),
    ));
  }
}
