import 'package:flutter/material.dart';

import '../themes/fonts.dart';
import '../themes/sizing.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool? isObscured;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    this.isObscured = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscured!,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: suffixIcon,
        floatingLabelStyle: poppinsRegular.copyWith(fontSize: 16),
        labelStyle: poppinsRegular.copyWith(fontSize: 16),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(roundedLarge),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(roundedLarge),
        ),
      ),
    );
  }
}
