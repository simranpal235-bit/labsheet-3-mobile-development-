import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: NumberCheck()));
}

class NumberCheck extends StatefulWidget {
  const NumberCheck({super.key});

  @override
  State<NumberCheck> createState() => _NumberCheckState();
}

class _NumberCheckState extends State<NumberCheck> {
  final num = TextEditingController();
  String result = "";

  void check() {
    double n = double.parse(num.text);

    setState(() {
      if (n > 0) {
        result = "Positive";
      } else if (n < 0) {
        result = "Negative";
      } else {
        result = "Zero";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Number Check")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: num, decoration: const InputDecoration(labelText: "Enter Number")),
            ElevatedButton(onPressed: check, child: const Text("Check")),
            Text(result),
          ],
        ),
      ),
    );
  }
}