import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: WidgetsDemo()));
}

class WidgetsDemo extends StatefulWidget {
  const WidgetsDemo({super.key});

  @override
  State<WidgetsDemo> createState() => _WidgetsDemoState();
}

class _WidgetsDemoState extends State<WidgetsDemo> {
  bool check = false;
  String gender = "Male";
  String course = "BCA";
  bool setting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets")),
      body: Column(
        children: [
          CheckboxListTile(
            title: const Text("Agree"),
            value: check,
            onChanged: (v) => setState(() => check = v!),
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
          SwitchListTile(
            title: const Text("Setting"),
            value: setting,
            onChanged: (v) => setState(() => setting = v),
          ),
        ],
      ),
    );
  }
}