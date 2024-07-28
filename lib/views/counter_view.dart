import 'package:counter_app_mvc/controllers/counter_controller.dart';
import 'package:counter_app_mvc/models/counter_model.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Count",
            style: TextStyle(fontSize: 28.0),
          ),
          Text(
            CounterController.count.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  CounterController.increment();
                  setState(() {});
                },
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 15,
              ),
              FloatingActionButton(
                onPressed: () {
                  CounterController.decrement();
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
