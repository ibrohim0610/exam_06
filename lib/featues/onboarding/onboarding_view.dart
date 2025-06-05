import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/splash.png",
        width: double.infinity,
        height: double.infinity,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
