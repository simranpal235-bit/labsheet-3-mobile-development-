import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: RectangleArea()));
}

class RectangleArea extends StatefulWidget {
  const RectangleArea({super.key});

  @override
  State<RectangleArea> createState() => _RectangleAreaState();
}

class _RectangleAreaState extends State<RectangleArea> {
  final length = TextEditingController();
  final width = TextEditingController();
  String result = "";

  void calculate() {
    double l = double.parse(length.text);
    double w = double.parse(width.text);

    setState(() {
      result = "Area = ${l * w}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rectangle Area")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: length, decoration: const InputDecoration(labelText: "Length")),
            TextField(controller: width, decoration: const InputDecoration(labelText: "Width")),
            ElevatedButton(onPressed: calculate, child: const Text("Calculate")),
            Text(result),
          ],
        ),
      ),
    );
  }
}