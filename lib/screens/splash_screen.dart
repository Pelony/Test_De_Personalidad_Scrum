import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Made Functions
      body: Center(
          child: Container(
        width: 300,
        height: 100,
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(20, 252, 0, 100),
              Color.fromRGBO(162, 192, 97, 100)
            ],
          ),
        ),
        child: MaterialButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: const StadiumBorder(),
          child: const Text(
            'A Samll Button',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            print('Hello!');
          },
        ),
      )),
    );
  }
}
