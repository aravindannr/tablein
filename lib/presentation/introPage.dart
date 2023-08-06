import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tablein/utils/colorConstants/colors.dart';
import 'loginPage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: orange,
      child: AnimatedSplashScreen(
        splash: "Assets/images/tablein-logo.png",
        nextScreen: LoginPage(),
        animationDuration: Duration(seconds: 2),
        splashIconSize: 600,
        centered: true,
      ),
    );
  }
}
