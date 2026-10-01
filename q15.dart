import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Gender()));
}

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  String gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gender")),
      body: Column(
        children: [
          RadioListTile(
            title: const Text("Male"),
            value: "Male",
            groupValue: gender,
            onChanged: (value) => setState(() => gender = value!),
          ),
          RadioListTile(
            title: const Text("Female"),
            value: "Female",
            groupValue: gender,
            onChanged: (value) => setState(() => gender = value!),
          ),
          Text("Selected: $gender"),
        ],
      ),
    );
  }
}