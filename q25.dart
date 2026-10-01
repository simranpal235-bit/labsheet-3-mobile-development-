import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ResultApp()));
}

class ResultApp extends StatefulWidget {
  const ResultApp({super.key});

  @override
  State<ResultApp> createState() => _ResultAppState();
}

class _ResultAppState extends State<ResultApp> {
  final name = TextEditingController();
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();

  String result = "";

  void calculate() {
    double a = double.parse(m1.text);
    double b = double.parse(m2.text);
    double c = double.parse(m3.text);

    double total = a + b + c;
    double percentage = total / 3;

    String status = (a >= 40 && b >= 40 && c >= 40)
        ? "Pass"
        : "Fail";

    setState(() {
      result =
      "Name: ${name.text}\nTotal: $total\nPercentage: ${percentage.toStringAsFixed(2)}%\nResult: $status";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Result")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(labelText: "Student Name"),
            ),
            TextField(
              controller: m1,
              decoration: const InputDecoration(labelText: "Subject 1 Marks"),
            ),
            TextField(
              controller: m2,
              decoration: const InputDecoration(labelText: "Subject 2 Marks"),
            ),
            TextField(
              controller: m3,
              decoration: const InputDecoration(labelText: "Subject 3 Marks"),
            ),
            ElevatedButton(
              onPressed: calculate,
              child: const Text("Calculate Result"),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}