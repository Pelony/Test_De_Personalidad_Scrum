import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/menu.svg'),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/love.svg'),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/check.svg'),
              label: 'Home',
              backgroundColor: Colors.blue)
        ],
      ),
    );
  }
}
