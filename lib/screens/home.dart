import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "hi syed",
          style: TextStyle(color: Colors.white, fontFamily: 'Sans Serif'),
        ),
        toolbarHeight: 150,
        backgroundColor: Color.fromRGBO(128, 0, 128, 5),
      ),
      body: Container(
        height: 120,
        width: 120,
        color: Colors.red,
      ),
    );
  }
}
