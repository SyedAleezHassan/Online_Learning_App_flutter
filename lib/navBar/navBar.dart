import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:learning_app_fyp/navBar/account.dart';
import 'package:learning_app_fyp/navBar/course.dart';
import 'package:learning_app_fyp/navBar/home.dart';
import 'package:learning_app_fyp/navBar/message.dart';
import 'package:learning_app_fyp/navBar/search.dart';

// import 'content/account.dart';
// import 'content/grid.dart';

class NavBar extends StatefulWidget {
  @override
  State createState() {
    return _NavBarState();
  }
}

class _NavBarState extends State {
  Widget? _child;

  @override
  void initState() {
    _child = HomeScreen();
    super.initState();
  }

  @override
  Widget build(context) {
    // Build a simple container that switches content based of off the selected navigation item
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 114, 23, 175),
        extendBody: true,
        body: _child,
        bottomNavigationBar: FluidNavBar(
          icons: [
            FluidNavBarIcon(
                // svgPath: "assets/home.svg",
                icon: Icons.home,
                backgroundColor: Color.fromRGBO(128, 0, 128, 5),
                extras: {"label": "home"}),
            FluidNavBarIcon(
                icon: Icons.book,
                backgroundColor: Color.fromRGBO(128, 0, 128, 5),
                extras: {"label": "bookmark"}),
            FluidNavBarIcon(
                icon: Icons.search,
                backgroundColor: Color.fromRGBO(128, 0, 128, 5),
                extras: {"label": "partner"}),
            FluidNavBarIcon(
                // svgPath: "assets/conference.svg",
                icon: Icons.message,
                backgroundColor: Color.fromRGBO(128, 0, 128, 5),
                extras: {"label": "conference"}),
            FluidNavBarIcon(
                // svgPath: "assets/conference.svg",
                icon: Icons.login,
                backgroundColor: Color.fromRGBO(128, 0, 128, 5),
                extras: {"label": "conference"}),
          ],
          onChange: _handleNavigationChange,
          style: const FluidNavBarStyle(
              barBackgroundColor: Color.fromRGBO(128, 0, 128, 5),
              iconBackgroundColor: Colors.white,
              iconSelectedForegroundColor: Color.fromARGB(255, 252, 250, 250),
              iconUnselectedForegroundColor:
                  Color.fromARGB(255, 248, 248, 248)),
          scaleFactor: 1.5,
          defaultIndex: 0,
          itemBuilder: (icon, item) => Semantics(
            label: icon.extras!["label"],
            child: item,
          ),
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = HomeScreen();
          break;
        case 1:
          _child = CourseScreen();
          break;
        case 2:
          _child = SearchResult();
          break;
        case 3:
          _child = MessageScreen();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.fastEaseInToSlowEaseOut, //easeout//easein
        switchOutCurve: Curves.linear,
        duration: Duration(milliseconds: 300),
        child: _child,
      );
    });
  }
}
