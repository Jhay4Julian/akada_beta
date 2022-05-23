// @dart=2.9

import 'package:akada_beta/screens/onboarding/welcome_one.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Akada',
      theme: ThemeData(
        primaryColor: const Color(0xff004ce2),
      ),
      home: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: const WelcomeOne(),
        image: Image.asset('assets/images/splash.png'),
        photoSize: 150.0,
        backgroundColor: const Color(0xff004ce2),
        loaderColor: Colors.white,
      ),
    );
  }
}