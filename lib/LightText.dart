
import 'package:flutter/material.dart';

class LightText extends StatelessWidget {
  final String text;
  final double Size;
  final Color color;

  const LightText({
    super.key,
    required this.text,
    required this.Size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: Size,
        color: color,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
