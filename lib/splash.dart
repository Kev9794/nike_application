import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nike_application/core.dart';
import 'package:nike_application/features/onboarding/view/pages/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OnBoardingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: ImageIcon(
          AppIcons.nikeSplash,
          color: AppColors.white,
          size: 157.0,
        ),
      ),
    );
  }
}
