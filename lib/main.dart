import 'package:flutter/material.dart';

import 'package:kodeeo_app/pages/splash_screen.dart';
import 'package:shared_value/shared_value.dart';

void main() {
  runApp(SharedValue.wrapApp( const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeeo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: SplashScreen(),
      // initialRoute: Routes.home,
      // onGenerateRoute: Routes.routemanager,
    );
  }
}


