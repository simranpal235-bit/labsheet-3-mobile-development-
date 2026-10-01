import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Department()));
}

class Department extends StatefulWidget {
  const Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  String department = "Computer Science";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Department")),
      body: Center(
        child: DropdownButton<String>(
          value: department,
          items: [
            "Computer Science",
            "Management",
            "Commerce"
          ].map((d) => DropdownMenuItem(value: d, child: Text(d))).toList(),
          onChanged: (value) {
            setState(() {
              department = value!;
            });
          },
        ),
      ),
    );
  }
}