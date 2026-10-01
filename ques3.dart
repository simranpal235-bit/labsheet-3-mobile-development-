import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Calculator()));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = "";

  void calculate(String op) {
    double x = double.parse(a.text);
    double y = double.parse(b.text);

    setState(() {
      if (op == "+") result = "${x + y}";
      if (op == "-") result = "${x - y}";
      if (op == "*") result = "${x * y}";
      if (op == "/") result = y == 0 ? "Cannot divide by zero" : "${x / y}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, decoration: const InputDecoration(labelText: "Number 1")),
            TextField(controller: b, decoration: const InputDecoration(labelText: "Number 2")),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(onPressed: () => calculate("+"), child: const Text("+")),
                ElevatedButton(onPressed: () => calculate("-"), child: const Text("-")),
                ElevatedButton(onPressed: () => calculate("*"), child: const Text("*")),
                ElevatedButton(onPressed: () => calculate("/"), child: const Text("/")),
              ],
            ),
            Text("Result = $result"),
          ],
        ),
      ),
    );
  }
}