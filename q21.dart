import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Login()));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final user = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: user,
              decoration: const InputDecoration(labelText: "Username"),
            ),
            TextField(
              controller: pass,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
            ElevatedButton(
              onPressed: () {
                user.clear();
                pass.clear();
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}