import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: FeedbackForm()));
}

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  String rating = "Good";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Feedback")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: "Name"),
            ),
            DropdownButton<String>(
              value: rating,
              items: ["Excellent", "Good", "Average", "Poor"]
                  .map((x) => DropdownMenuItem(
                value: x,
                child: Text(x),
              ))
                  .toList(),
              onChanged: (v) => setState(() => rating = v!),
            ),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(labelText: "Feedback"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}