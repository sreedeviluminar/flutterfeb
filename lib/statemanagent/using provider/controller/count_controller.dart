import 'package:flutter/material.dart';
import 'package:flutterfeb/statemanagent/using%20provider/model/count.dart';

class CounterProvider extends ChangeNotifier {

  final Count _incCount = Count(0);  /// similar to int count = 0

  Count get counter => _incCount;

  void incrementCounter(){
    _incCount.value++;
    notifyListeners();
  }


}
