import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SimpleForm()));
}

class SimpleForm extends StatefulWidget {
  const SimpleForm({super.key});

  @override
  State<SimpleForm> createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final name = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Form")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = "Name: ${name.text}";
                });
              },
              child: const Text("Submit"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name.clear();
                  result = "";
                });
              },
              child: const Text("Reset"),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}