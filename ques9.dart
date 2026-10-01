import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: EvenOdd()));
}

class EvenOdd extends StatefulWidget {
  const EvenOdd({super.key});

  @override
  State<EvenOdd> createState() => _EvenOddState();
}

class _EvenOddState extends State<EvenOdd> {
  final num = TextEditingController();
  String result = "";

  void check() {
    int n = int.parse(num.text);
    setState(() {
      result = n % 2 == 0 ? "Even" : "Odd";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Even or Odd")),
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