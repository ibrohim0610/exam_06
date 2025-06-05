import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpViewSocialMedia extends StatelessWidget {
  const SignUpViewSocialMedia({
    super.key,
    required this.text,
    required this.textColor,
    required this.containerColor,
    required this.callback,
    this.containerWidth = 335,
    this.containerHeight = 43,
    this.fontSize = 15,
    this.fontWeight = FontWeight.w500,
    this.radius = 4,
  });

  final String text;
  final double fontSize;
  final double containerWidth, containerHeight;
  final FontWeight fontWeight;
  final Color textColor, containerColor;
  final double radius;

  final VoidCallback? callback; // ✅ nullable bo‘ldi

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      style: TextButton.styleFrom(
        fixedSize: Size(containerWidth, containerHeight),
        backgroundColor: containerColor,
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(radius),
      ),),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: 1,
        ),
      ),
    );
  }
}