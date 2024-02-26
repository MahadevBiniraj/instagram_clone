import 'package:flutter/material.dart';

class SplashScreeen extends StatelessWidget {
  const SplashScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Image(image: AssetImage("assets/images/Icon.png"))),
    );
  }
}
