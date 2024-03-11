import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bookly/core/utiles/constants.dart';
import 'package:bookly/feauture/Home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/Logo.png',
      nextScreen: const HomeView(),
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: kPrimaryColor,
    );
  }
}
