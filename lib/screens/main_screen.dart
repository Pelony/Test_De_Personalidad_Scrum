import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/AppBarBottom().dart';
import 'package:test_softskills/screens/splash_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainPageScreen createState() => _MainPageScreen();
}

class _MainPageScreen extends State<MainScreen> {
  int currentIndex = 0;
  final screens = [MainScreen(), SplashScreen(), SplashScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Color.fromRGBO(20, 252, 0, 100),
          unselectedItemColor: Colors.white70,
          iconSize: 35.0,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Questions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check),
              label: 'Answers',
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              _customAppBar(),
              _textsHeader(context),
              _ImageBackground(),
              //_customAppBar2(),
            ],
          ),
        ));
  }
}

Widget _customAppBar() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          iconSize: 40.0,
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
      ],
    ),
  );
}

Widget _textsHeader(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Bienvenido al test de habilidades blandas para Scrum',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat eu egestas id tortor etiam etiam suspendisse elit. Ultrices mi et morbi.',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ]),
  );
}

Widget _ImageBackground() {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Container(
        width: 200,
        height: 55,
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
            'Iniciar Test',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          onPressed: () {
            print('Hello!');
          },
        ),
      ));
}


//
