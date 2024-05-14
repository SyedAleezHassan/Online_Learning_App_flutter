import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  color: Color.fromRGBO(128, 0, 128, 5),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Hi Syed!",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Schyler',
                                fontSize: 29,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Let's start learning ",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Schyler',
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //dusra kam nechy ka@@@@@@@@@@@@
                Positioned(
                  top: 100,
                  child: Container(
                    // height: 700,
                    width: 400,
                    margin: EdgeInsets.only(top: 70),

                    // color: Color.fromARGB(255, 23, 114, 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 180,
                                width: 250,
                                margin: EdgeInsets.only(top: 15, left: 15),
                                child: Stack(
                                  children: [
                                    // Text("lalalal"),
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
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                              ),
                              Container(
                                height: 180,
                                width: 250,
                                margin: EdgeInsets.only(top: 15, left: 15),
                                child: Text("lalalal"),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 134, 121, 121),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                              ),
                              Container(
                                height: 180,
                                width: 250,
                                margin: EdgeInsets.only(
                                    top: 15, left: 15, right: 15),
                                child: Text("lalalal"),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 188, 184, 184),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: const Text(
                            "Learning Plan",
                            style: TextStyle(
                                color: Color.fromARGB(255, 12, 1, 1),
                                fontFamily: 'Schyler',
                                fontSize: 29,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        //learning wala container
                        Container(
                          margin: EdgeInsets.only(left: 19, top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 235, 231, 231),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          height: 130,
                          width: 344,
                          // margin: EdgeInsets.all(20),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 19, top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 166, 133, 133),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 154, 149, 149)
                                      .withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          height: 230,
                          width: 344,
                          // margin: EdgeInsets.all(20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 130,
              left: 20,
              right: 20,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 235, 231, 231),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ]),
                height: 100,
                width: 344,
                // margin: EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //     body: Stack(
  //       children: [
  //         Container(
  //           height: 170,
  //           width: 500,
  //           color: Color.fromRGBO(128, 0, 128, 5),
  //           child: Column(
  //             children: [
  //               Text(
  //                 "Hi Syed!",
  //                 style: TextStyle(
  //                     color: Colors.white,
  //                     fontFamily: 'Schyler',
  //                     fontSize: 29,
  //                     fontWeight: FontWeight.bold),
  //               ),
  //               SizedBox(
  //                 height: 5,
  //               ),
  //               Text(
  //                 "Let's start learning ",
  //                 style: TextStyle(
  //                     color: Colors.white, fontFamily: 'Schyler', fontSize: 16),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Positioned(
  //           bottom: 0,
  //           child: Container(
  //             height: 140,
  //             width: 250,
  //             color: Colors.amberAccent,
  //           ),
  //         ),
  //         Positioned(
  //           top: 161,
  //           child: Container(
  //             height: 100,
  //             width: 300,
  //             color: Colors.black,
  //           ),
  //         )
  //       ],
  //     ),
  //   );

  //   // body: Column(
  //   //   children: [
  //   //     Stack(
  //   //       children: [
  //   //         Positioned(
  //   //           top: 300,
  //   //           child: Container(
  //   //             height: 100,
  //   //             width: 250,
  //   //             color: Colors.amberAccent,
  //   //           ),
  //   //         )
  //   //       ],
  //   //     )
  //   //   ],
  //   // )
  // }
}
