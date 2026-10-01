import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Terms()));
}

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Terms")),
      body: Center(
        child: CheckboxListTile(
          title: const Text("I agree to the terms and conditions"),
          value: agree,
          onChanged: (value) {
            setState(() {
              agree = value!;
            });
          },
        ),
      ),
    );
  }
}