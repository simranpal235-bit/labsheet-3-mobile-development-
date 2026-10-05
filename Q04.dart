// LAB SHEET 6 - QUESTION 4
//
// Create a Flutter application to save a user’s name using SharedPreferences and display it when the application is reopened.
//
// Answer:
// import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: NamePage()));

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  final controller = TextEditingController();
  String name = '';

  @override
  void initState() {
    super.initState();
    loadName();
  }

  Future<void> loadName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => name = prefs.getString('name') ?? '');
  }

  Future<void> saveName() async {
    final value = controller.text.trim();
    if (value.isEmpty) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', value);

    setState(() => name = value);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Save User Name')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: 'Enter Name'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: saveName,
              child: const Text('Save'),
            ),
            const SizedBox(height: 20),
            Text(name.isEmpty ? 'No name saved' : 'Saved Name: $name'),
          ],
        ),
      ),
    );
  }
}
