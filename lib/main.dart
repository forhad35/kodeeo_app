import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:kodeeo_app/pages/splash_screen.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_value/shared_value.dart';

void main() async{
  runApp(SharedValue.wrapApp( const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Kodeeo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // initialRoute: Routes.home,
      // onGenerateRoute: Routes.routemanager,
    );
  }
}


