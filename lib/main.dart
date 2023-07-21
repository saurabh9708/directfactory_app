// ignore_for_file: unused_import

import 'package:directfactory_app/Home/home_Page.dart';
import 'package:directfactory_app/login/login_Page.dart';
import 'package:directfactory_app/splash/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
