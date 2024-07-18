import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
          borderRadius: BorderRadius.circular(20), // Đặt borderRadius cho enabledBorder
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
          borderRadius: BorderRadius.circular(20), // Đặt borderRadius cho focusedBorder
        ),
        fillColor: const Color.fromARGB(255, 255, 255, 255),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Color.fromARGB(255, 170, 169, 169)),
      ),
    ),
  );
}
}