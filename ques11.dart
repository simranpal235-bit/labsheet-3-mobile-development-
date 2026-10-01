import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Temperature()));
}

class Temperature extends StatefulWidget {
  const Temperature({super.key});

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  final c = TextEditingController();
  String result = "";

  void convert() {
    double cel = double.parse(c.text);
    double f = (cel * 9 / 5) + 32;

    setState(() {
      result = "Fahrenheit = $f";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Temperature")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: c, decoration: const InputDecoration(labelText: "Celsius")),
            ElevatedButton(onPressed: convert, child: const Text("Convert")),
            Text(result),
          ],
        ),
      ),
    );
  }
}