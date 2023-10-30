import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:kodeeo_app/pages/bootcamp.dart';
import 'package:kodeeo_app/pages/home.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kodeeo_app/pages/profile.dart';

import '../widgets/drawer.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'images/img.png',
      nextScreen: Home(),
      splashTransition: SplashTransition.scaleTransition,
    );
  }
}
