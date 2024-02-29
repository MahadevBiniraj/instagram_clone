import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constantimages.dart';
import 'dart:async';

import 'package:instagram_clone/view/select_account_screen/selectaccountscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Selectaccountscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(ImageConstants.appIcon)),
    );
  }
}
