import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Log in or sign up',
          style: TextStyle(
            color: Color.fromARGB(221, 0, 0, 0),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
