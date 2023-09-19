import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../themes/fonts.dart';
import '../themes/sizing.dart';

class CustomRoundedButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color color, textColor;
  final double width, height, fontSize, borderRadius;
  final bool isShadow;
  const CustomRoundedButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.borderRadius = 16,
    required this.width,
    required this.height,
    required this.color,
    required this.isShadow,
    required this.textColor,
    this.fontSize = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: isShadow
                ? [
                    BoxShadow(
                        color: primaryColor.withOpacity(0.25),
                        offset: const Offset(2, 8),
                        blurRadius: marginMedium),
                  ]
                : []),
        child: Center(
          child: Text(
            text,
            style:
                poppinsSemiBold.copyWith(fontSize: fontSize, color: textColor),
          ),
        ),
      ),
    );
  }
}
