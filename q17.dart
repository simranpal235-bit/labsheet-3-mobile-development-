import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Semester()));
}

class Semester extends StatefulWidget {
  const Semester({super.key});

  @override
  State<Semester> createState() => _SemesterState();
}

class _SemesterState extends State<Semester> {
  String semester = "Semester 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Semester")),
      body: Center(
        child: DropdownButton<String>(
          value: semester,
          items: [
            "Semester 1",
            "Semester 2",
            "Semester 3",
            "Semester 4",
            "Semester 5",
            "Semester 6"
          ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
          onChanged: (value) {
            setState(() {
              semester = value!;
            });
          },
        ),
      ),
    );
  }
}