import 'package:flutter/material.dart';

class SignUpTitleDesc extends StatelessWidget {
  const SignUpTitleDesc({super.key, required this.title, required this.desc});
  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 124),
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
