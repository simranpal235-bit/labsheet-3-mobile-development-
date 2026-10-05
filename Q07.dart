// LAB SHEET 6 - QUESTION 7
//
// Create a Flutter application to implement a “Remember Me” checkbox on a login screen using SharedPreferences.
//
// Answer:
// import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: LoginPage()));

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
    loadRemember();
  }

  Future<void> loadRemember() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() => rememberMe = prefs.getBool('rememberMe') ?? false);
  }

  Future<void> saveRemember(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('rememberMe', value);
    setState(() => rememberMe = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            CheckboxListTile(
              title: const Text('Remember Me'),
              value: rememberMe,
              onChanged: (value) => saveRemember(value ?? false),
            ),
          ],
        ),
      ),
    );
  }
}
