import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContinueAvec extends StatelessWidget {
  final String label;
  final String icon;
  final VoidCallback onPressed;

  const ContinueAvec({
    super.key,
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon, height: 20),
            const SizedBox(width: 12),
            Text('Continue with $label'),
          ],
        ),
      ),
    );
  }
}
