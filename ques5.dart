import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: SnackExample()));
}

class SnackExample extends StatelessWidget {
  const SnackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SnackBar")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Button Pressed!")),
            );
          },
          child: const Text("Show Message"),
        ),
      ),
    );
  }
}