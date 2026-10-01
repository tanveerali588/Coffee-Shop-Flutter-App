import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String text;
  final Color color;
  final double Size;

  const BoldText({
    super.key,
    required this.text,
    required this.color,
    required this.Size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: Size,
      ),
    );
  }
}