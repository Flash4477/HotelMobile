import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback onTap;

  const RegisterButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: 328,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(57, 57, 57, 20),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Center(
          child: Text(
            "Đăng Ký",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
