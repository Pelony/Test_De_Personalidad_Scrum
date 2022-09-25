import 'package:flutter/material.dart';
import 'package:test_softskills/screens/main_screen.dart';
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
      home: MainScreen(),
      theme: ThemeData(
          primaryColor: Color.fromRGBO(20, 252, 0, 100),
          accentColor: Color.fromRGBO(162, 192, 97, 100),
          highlightColor: Color.fromRGBO(6, 5, 1, 100),
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
              ),
              headline3: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              bodyText1: TextStyle(
                fontSize: 20.0,
                color: Color.fromRGBO(0, 0, 0, 100),
              ))),
    );
  }
}
