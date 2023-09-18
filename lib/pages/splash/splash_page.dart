import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacementNamed('/home');
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'lib/assets/logo1.png',
          width: 100,
        ),
      ),
    );
  }
}
