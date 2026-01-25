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
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          SvgPicture.asset(icon, width: 24, height: 24),
          const SizedBox(width: 12),
          Expanded(child: Text('Continue with $label')),
        ],
      ),
    );
  }
}
