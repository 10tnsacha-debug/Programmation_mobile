import 'package:flutter/material.dart';
import 'package:premiere_interface/theme/colors.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ContinueButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          foregroundColor: buttonPrimaryText,
          backgroundColor: buttonPrimaryBackground,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        child: const Text('Continue'),
      ),
    );
  }
}
