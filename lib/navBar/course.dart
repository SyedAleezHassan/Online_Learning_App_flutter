import 'package:flutter/material.dart';
// import 'package:learning_app_fyp/color/colors.dart';
// import 'package:learning_app_fyp/data/courseData.dart';

import '../customWidgets/course_widget.dart';
import '../data/courseData.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 70, left: 20, right: 20),
          // Removed fixed height
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi Syed!",
                style: TextStyle(
                  fontFamily: 'Schyler',
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Your horizontal scrollable containers

                    Container(
                      height: 70,
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
                              height: 270,
                              width: 250,
                            ),
                          ),
                          Positioned(
                              top: 120,
                              left: 15,
                              child: Image.asset("assets/startButton.jpg")),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Color.fromARGB(255, 134, 121, 121),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 169, 211, 248)
                                  .withOpacity(0.3),
                              spreadRadius: 0.2,
                              blurRadius: 20,
                              offset: Offset(0, 3),
                            ),
                          ]),
                    ),
                    Container(
                      height: 70,
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
                              height: 270,
                              width: 250,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Color.fromARGB(255, 134, 121, 121),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 169, 211, 248)
                                  .withOpacity(0.3),
                              spreadRadius: 0.2,
                              blurRadius: 20,
                              offset: Offset(0, 3),
                            ),
                          ]),
                    ),
                    Container(
                      height: 70,
                      width: 250,
                      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Stack(
                        children: [
                          Positioned(top: 10, child: Text("lalalal")),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            child: Image.asset(
                              "assets/card.png",
                              height: 270,
                              width: 250,
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Color.fromARGB(255, 134, 121, 121),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 169, 211, 248)
                                  .withOpacity(0.3),
                              spreadRadius: 0.2,
                              blurRadius: 20,
                              offset: Offset(0, 3),
                            ),
                          ]),
                    ),
                    //               ],
                    //             ),
                    //           ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              TabBar(
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Popular'),
                  Tab(text: 'New'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount:
                          courseData.length, // Number of items in 'All' tab
                      itemBuilder: (context, index) {
                        return ProductCard(
                            imageUrl: courseData[index]["imgUrl"],
                            productName: courseData[index]["courseName"],
                            description: courseData[index]["courseDescription"],
                            price: courseData[index]["price"],
                             indexxx:index,);
                      },
                    ),
                    ListView.builder(
                      itemCount: 20, // Number of items in 'Popular' tab
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Popular Course ${index + 1}'),
                          // tileColor: Colors.amber,
                        );
                      },
                    ),
                    ListView.builder(
                      itemCount: 20, // Number of items in 'New' tab
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('New Course ${index + 1}'),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
