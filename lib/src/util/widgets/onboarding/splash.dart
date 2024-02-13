import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:okazawa/src/model/constants.dart';

class SplashScreen extends StatelessWidget {
  final Widget nextScreen;

  const SplashScreen({Key? key, required this.nextScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      curve: Curves.easeInCubic,
      animationDuration: const Duration(seconds: 1),
      duration: 2000,
      backgroundColor: yokohamagreen,
      splashTransition: SplashTransition.fadeTransition,
      splash: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.cover,
      ),
      nextScreen: nextScreen,
    );
  }
}
