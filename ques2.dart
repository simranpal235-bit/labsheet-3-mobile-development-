import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Sum()));
}

class Sum extends StatefulWidget {
  const Sum({super.key});

  @override
  State<Sum> createState() => _SumState();
}

class _SumState extends State<Sum> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = "";

  void calculate() {
    double x = double.parse(a.text);
    double y = double.parse(b.text);
    setState(() {
      result = "Sum = ${x + y}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sum")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, decoration: const InputDecoration(labelText: "Number 1")),
            TextField(controller: b, decoration: const InputDecoration(labelText: "Number 2")),
            ElevatedButton(onPressed: calculate, child: const Text("Add")),
            Text(result),
          ],
        ),
      ),
    );
  }
}