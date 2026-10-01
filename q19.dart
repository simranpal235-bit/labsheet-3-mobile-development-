import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Setting()));
}

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Setting")),
      body: Center(
        child: SwitchListTile(
          title: Text(on ? "ON" : "OFF"),
          value: on,
          onChanged: (value) {
            setState(() {
              on = value;
            });
          },
        ),
      ),
    );
  }
}