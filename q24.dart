import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SimpleCalculator()));
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  String result = "";

  void calculate(String op) {
    double a = double.parse(n1.text);
    double b = double.parse(n2.text);

    setState(() {
      if (op == "+") result = "${a + b}";
      if (op == "-") result = "${a - b}";
      if (op == "*") result = "${a * b}";
      if (op == "/") result = b == 0 ? "Cannot divide by zero" : "${a / b}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: n1, decoration: const InputDecoration(labelText: "Number 1")),
            TextField(controller: n2, decoration: const InputDecoration(labelText: "Number 2")),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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