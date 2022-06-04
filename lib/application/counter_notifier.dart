import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  // var state = CounterState(count: 0);
  var state = 0;
  void increment() {
    state = state + 1;
    notifyListeners();
  }
}
