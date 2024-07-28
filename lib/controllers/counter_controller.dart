import 'package:counter_app_mvc/models/counter_model.dart';

class CounterController {
  static int get count => CounterModel.count;

  static void increment() {
    CounterModel.increament();
  }

  static void decrement() {
    if (CounterController.count > 0) {
      CounterModel.decreament();
    }
  }
}
