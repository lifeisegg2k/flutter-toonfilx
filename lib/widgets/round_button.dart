import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String btnText;
  final Color btnBgColor;
  final Color btnTextColor;

  const Button({
    super.key,
    required this.btnText,
    required this.btnBgColor,
    required this.btnTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: btnBgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 40,
        ),
        child: Text(
          btnText,
          style: TextStyle(
            color: btnTextColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
