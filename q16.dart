import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Course()));
}

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  String course = "BCA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Course")),
      body: Column(
        children: [
          RadioListTile(
            title: const Text("BCA"),
            value: "BCA",
            groupValue: course,
            onChanged: (v) => setState(() => course = v!),
          ),
          RadioListTile(
            title: const Text("BBA"),
            value: "BBA",
            groupValue: course,
            onChanged: (v) => setState(() => course = v!),
          ),
          RadioListTile(
            title: const Text("B.Com"),
            value: "B.Com",
            groupValue: course,
            onChanged: (v) => setState(() => course = v!),
          ),
          Text("Selected: $course"),
        ],
      ),
    );
  }
}