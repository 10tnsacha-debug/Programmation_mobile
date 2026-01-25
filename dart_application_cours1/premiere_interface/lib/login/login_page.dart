import 'package:flutter/material.dart';
import 'widgets/button_continue.dart';
import 'widgets/continue_avec.dart';
import 'widgets/email.dart';
import 'widgets/separation_or.dart';

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

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Email(),
            const SizedBox(height: 16),

            ContinueButton(onPressed: () {}),
            const SizedBox(height: 24),

            const SizedBox(height: 24),

            ContinueAvec(
              label: 'Apple',
              icon: 'assets/apple_logo.svg',
              onPressed: () {},
            ),
            const SizedBox(height: 12),

            ContinueAvec(
              label: 'Google',
              icon: 'assets/google_logo.svg',
              onPressed: () {},
            ),
            const SizedBox(height: 12),

            ContinueAvec(
              label: 'Facebook',
              icon: 'assets/facebook_logo.svg',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
