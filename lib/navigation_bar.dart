// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/homesceen.dart';

class Navigation extends StatefulWidget {
  int selectedIndex;

  Navigation(this.selectedIndex);

  // const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
  }

  List<Widget> pages = <Widget>[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xffe84c3c),
          // unselectedItemColor: ,
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Color.fromRGBO(217, 217, 217, 0.5),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('images/home.svg'),
                label: 'Home',
                activeIcon: SvgPicture.asset(
                  'images/home.svg',
                  color: Color(0xffe84c3c),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('images/reminder.svg'),
                label: 'Reminder',
                activeIcon: SvgPicture.asset(
                  'images/reminder.svg',
                  color: Color(0xffe84c3c),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('images/news.svg'),
                label: 'Newsletter',
                activeIcon: SvgPicture.asset(
                  'images/news.svg',
                  color: Color(0xffe84c3c),
                )),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('images/me.svg'),
                label: 'Me',
                activeIcon: SvgPicture.asset(
                  'images/me.svg',
                  color: Color(0xffe84c3c),
                )),
          ]),
      body: IndexedStack(
        index: widget.selectedIndex,
        children: pages,
      ),
    );
  }
}
