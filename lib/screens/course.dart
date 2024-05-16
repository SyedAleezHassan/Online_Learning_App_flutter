import 'package:flutter/material.dart';
import 'package:learning_app_fyp/color/colors.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 70, left: 20, right: 20),
      height: 370,
      width: double.infinity,
      //color: Color.fromRGBO(128, 0, 128, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi Syed!",
            style: const TextStyle(
                color: appColor.primaryColor,
                fontFamily: 'Schyler',
                fontSize: 29,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),

              // hintText: 'Enter a search term',
            ),
          ),
          Container(
            height: 180,
            width: 250,
            margin: EdgeInsets.only(top: 15, left: 15),
            child: Stack(
              children: [
                Positioned(top: 10, child: Text("lalalal")),
                Positioned(
                  top: 0,
                  bottom: 0,
                  child: Image.asset(
                    "assets/card.png",
                    height: 170,
                    width: 150,
                  ),
                ),
                // Positioned(
                //  top: 120,
                // left: 15,
                // child: Image.asset(
                //     "assets/startButton.jpg")
                //),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Color.fromARGB(255, 134, 121, 121),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 169, 211, 248).withOpacity(0.3),
                    spreadRadius: 0.2,
                    blurRadius: 20,
                    offset: Offset(0, 3),
                  ),
                ]),
          ),
        ],
      ),
    ));
  }
}
