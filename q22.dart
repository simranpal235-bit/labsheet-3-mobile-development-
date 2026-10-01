import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Registration()));
}

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String gender = "Male";
  String course = "BCA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: "Name"),
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "Password"),
            ),
            RadioListTile(
              title: const Text("Male"),
              value: "Male",
              groupValue: gender,
              onChanged: (v) => setState(() => gender = v!),
            ),
            RadioListTile(
              title: const Text("Female"),
              value: "Female",
              groupValue: gender,
              onChanged: (v) => setState(() => gender = v!),
            ),
            DropdownButton(
              value: course,
              items: ["BCA", "BBA", "B.Com"]
                  .map((x) => DropdownMenuItem(value: x, child: Text(x)))
                  .toList(),
              onChanged: (v) => setState(() => course = v!),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}