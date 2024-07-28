import 'package:counter_app_mvc/models/counter_model.dart';
import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int get count => CounterModel.count;

  void increment() {
    CounterModel.increament();
    notifyListeners();
  }

  void decrement() {
    if (count > 0) {
      CounterModel.decreament();
      notifyListeners();
    }
  }
}
