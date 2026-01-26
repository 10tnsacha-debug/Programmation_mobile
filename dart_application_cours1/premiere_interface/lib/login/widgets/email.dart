import 'package:flutter/material.dart';
import 'package:premiere_interface/theme/colors.dart';

class Email extends StatelessWidget {
  const Email({super.key});
  //const Email({required this.valueChanged, super.key});
  //final ValueChanged<String>

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: const TextStyle(color: textPrimary),

      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email_outlined),
        hintText: 'Email Address',
        hintStyle: const TextStyle(color: textSecondary),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: inputFieldInactiveBackground),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: inputFieldActiveBackground),
        ),
      ),
    );
  }
}


//




//