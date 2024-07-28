class CounterModel {
  static int _counter = 0;

  //getter
  static int get count => _counter;

  static void increament() {
    _counter++;
  }

  static void decreament() {
    _counter--;
  }
}
