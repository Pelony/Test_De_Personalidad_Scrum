import 'package:flutter/material.dart';
import 'package:test_softskills/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test de Soft Skills',
      home: SplashScreen(),
      theme: ThemeData(
          primaryColor: Color(0xFF5F5FFF),
          accentColor: Color(0XFF030047),
          highlightColor: Color(0XFFB7B7D2),
          textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
                color: Color(0XFF030047),
              ),
              headline2: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 22, 1, 136),
              ))),
    );
  }
}
