import 'package:flutter/material.dart';

Widget quantityButton(IconData icon) {
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(7),
    ),
    child: Icon(
      icon,
      color: Colors.white,
      size: 15,
    ),
  );
}

Widget sizeBox(String text, double width) {
  return Container(
    height: 28,
    width: width,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    ),
  );
}

Widget numberBox() {
  return Container(
    height: 25,
    width: 40,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.orange,
      ),
      borderRadius: BorderRadius.circular(7),
    ),
    child: const Center(
      child: Text(
        "1",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    ),
  );
}