import 'package:flutter/material.dart';
import 'package:learning_app_fyp/screens/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      title: 'Flutter Carousel Full Page Slider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: sliderScreen(),
    );
  }

}
