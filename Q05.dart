// LAB SHEET 6 - QUESTION 5
//
// Create a Flutter application to store and retrieve an integer counter value using SharedPreferences.
//
// Answer:
// import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: CounterPage()));

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  Future<void> loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => counter = prefs.getInt('counter') ?? 0);
  }

  Future<void> increment() async {
    counter++;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', counter);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Text('$counter', style: const TextStyle(fontSize: 40)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
