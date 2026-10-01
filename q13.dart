import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: BMI()));
}

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final height = TextEditingController();
  final weight = TextEditingController();
  String result = "";

  void calculate() {
    double h = double.parse(height.text) / 100;
    double w = double.parse(weight.text);
    double bmi = w / (h * h);

    setState(() {
      result = "BMI = ${bmi.toStringAsFixed(2)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: height, decoration: const InputDecoration(labelText: "Height (cm)")),
            TextField(controller: weight, decoration: const InputDecoration(labelText: "Weight (kg)")),
            ElevatedButton(onPressed: calculate, child: const Text("Calculate")),
            Text(result),
          ],
        ),
      ),
    );
  }
}