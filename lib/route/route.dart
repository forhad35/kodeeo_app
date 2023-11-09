
import 'package:flutter/material.dart';
import 'package:kodeeo_app/pages/abouts.dart';
import 'package:kodeeo_app/pages/bootcamp.dart';
import 'package:kodeeo_app/pages/home.dart';
import 'package:kodeeo_app/pages/splash_screen.dart';
import '../pages/login.dart';
class Routes {
  static const String splash = "/splash_screen";
  static const String home = "/";
  static const String loginpage = "/login";
  static const String aboutspage = "/abouts";
  static const String bootcampspage = "/bootcamp";
  static Route<dynamic> routemanager(RouteSettings settings){
    switch(settings.name){
      case splash:
        return MaterialPageRoute(builder: (context)=>SplashScreen());
      case home:
        return MaterialPageRoute(builder: (context)=>Home());
      case loginpage:
        return MaterialPageRoute(builder: (context)=>Login());
      case aboutspage:
        return MaterialPageRoute(builder: (context)=>AboutUs());
      case bootcampspage:
        return MaterialPageRoute(builder: (context)=>BootCamp());
      default:
        throw "No match";
    }
  }
}

