import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  final String title1;
  final String title2;
  final GestureTapCallback onTap;
  SignUpText({required this.title1, required this.title2, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title1,
          style: const TextStyle(color: Color(0xFF8F8F9E)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              title2,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
