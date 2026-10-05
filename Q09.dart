// LAB SHEET 6 - QUESTION 9
//
// Create a Flutter application to store and display a list of strings (such as favourite subjects) using SharedPreferences.
//
// Answer:
// import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: SubjectsPage()));

class SubjectsPage extends StatefulWidget {
  const SubjectsPage({super.key});

  @override
  State<SubjectsPage> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends State<SubjectsPage> {
  List<String> subjects = [];

  @override
  void initState() {
    super.initState();
    loadSubjects();
  }

  Future<void> loadSubjects() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => subjects = prefs.getStringList('subjects') ?? []);
  }

  Future<void> saveSubjects() async {
    final prefs = await SharedPreferences.getInstance();
    final list = ['Java', 'Python', 'Flutter', 'Cyber Security'];
    await prefs.setStringList('subjects', list);
    setState(() => subjects = list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourite Subjects')),
      body: subjects.isEmpty
          ? const Center(child: Text('No subjects saved'))
          : ListView(
              children: subjects
                  .map((s) => ListTile(title: Text(s)))
                  .toList(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: saveSubjects,
        child: const Icon(Icons.save),
      ),
    );
  }
}
