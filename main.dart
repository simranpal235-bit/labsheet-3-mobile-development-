import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: StudentName()));
}

class StudentName extends StatefulWidget {
  const StudentName({super.key});

  @override
  State<StudentName> createState() => _StudentNameState();
}

class _StudentNameState extends State<StudentName> {
  final name = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Name")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(labelText: "Enter Name"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = name.text;
                });
              },
              child: const Text("Submit"),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}