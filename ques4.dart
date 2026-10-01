import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ChangeText()));
}

class ChangeText extends StatefulWidget {
  const ChangeText({super.key});

  @override
  State<ChangeText> createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  String text = "Hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Change Text")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = "Button Pressed!";
                });
              },
              child: const Text("Click"),
            ),
          ],
        ),
      ),
    );
  }
}