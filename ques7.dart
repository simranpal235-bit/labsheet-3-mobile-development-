import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: StudentMarks()));
}

class StudentMarks extends StatefulWidget {
  const StudentMarks({super.key});

  @override
  State<StudentMarks> createState() => _StudentMarksState();
}

class _StudentMarksState extends State<StudentMarks> {
  final name = TextEditingController();
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();
  String result = "";

  void calculate() {
    double total = double.parse(m1.text) +
        double.parse(m2.text) +
        double.parse(m3.text);

    setState(() {
      result = "${name.text} - Total Marks = $total";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Marks")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: name, decoration: const InputDecoration(labelText: "Name")),
            TextField(controller: m1, decoration: const InputDecoration(labelText: "Subject 1")),
            TextField(controller: m2, decoration: const InputDecoration(labelText: "Subject 2")),
            TextField(controller: m3, decoration: const InputDecoration(labelText: "Subject 3")),
            ElevatedButton(onPressed: calculate, child: const Text("Calculate")),
            Text(result),
          ],
        ),
      ),
    );
  }
}