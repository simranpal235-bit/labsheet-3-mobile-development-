import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Percentage()));
}

class Percentage extends StatefulWidget {
  const Percentage({super.key});

  @override
  State<Percentage> createState() => _PercentageState();
}

class _PercentageState extends State<Percentage> {
  final a = TextEditingController();
  final b = TextEditingController();
  final c = TextEditingController();
  String result = "";

  void calculate() {
    double total = double.parse(a.text) +
        double.parse(b.text) +
        double.parse(c.text);
    double percentage = (total / 300) * 100;

    setState(() {
      result = "Percentage = ${percentage.toStringAsFixed(2)}%";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Percentage")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, decoration: const InputDecoration(labelText: "Subject 1")),
            TextField(controller: b, decoration: const InputDecoration(labelText: "Subject 2")),
            TextField(controller: c, decoration: const InputDecoration(labelText: "Subject 3")),
            ElevatedButton(onPressed: calculate, child: const Text("Calculate")),
            Text(result),
          ],
        ),
      ),
    );
  }
}