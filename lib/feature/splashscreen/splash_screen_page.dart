import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kasir_app_mobile/feature/login/login_page.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    await Future.delayed(const Duration(seconds: 3));
    goToLogin();
  }

  goToLogin() => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Kasir APP",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: LoadingAnimationWidget.waveDots(
                    color: Colors.green, size: 60))
          ],
        ),
      ),
    );
  }
}
