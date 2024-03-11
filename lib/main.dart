import 'package:bookly/core/utiles/constants.dart';
import 'package:bookly/feauture/Splash/pesentation/view/splash_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
      ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home:  const SplashView(),
    );
  }
}
