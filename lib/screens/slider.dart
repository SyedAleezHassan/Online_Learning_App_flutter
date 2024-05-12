import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:learning_app_fyp/screens/login.dart';
import 'package:learning_app_fyp/screens/signUp.dart';

class sliderScreen extends StatelessWidget {
  final List<String> images = [
    'assets/Onboarding 01.png',
    'assets/Onboarding 02.png',
    "assets/Onboarding 03.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Full Page Carousel Slider'),
      // ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height, // Full screen height
            enlargeCenterPage: true,
            // autoPlay: true,
          ),
          items: images.asMap().entries.map((entry) {
            int index = entry.key;
            String image = entry.value;
            return Builder(
              builder: (BuildContext context) {
                return Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin:
                          const EdgeInsets.symmetric(horizontal: 5.0, vertical: 50),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (index == 2)
                      Positioned(
                        bottom: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 140,
                              decoration: const BoxDecoration(),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpScreen()));
                                    // Add your button action here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Rectangular border
                                    ),
                                    backgroundColor:
                                        const Color.fromRGBO(128, 0, 128, 5),
                                  ),
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05,
                            ),
                            Container(
                              height: 60,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color.fromRGBO(128, 0, 128, 5),
                                      width: 2)),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginScreen()));
                                    // Add your button action here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Rectangular border
                                    ),
                                  ),
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Color.fromRGBO(128, 0, 128, 5),
                                        fontWeight: FontWeight.w700),
                                  )),
                            ),
                          ],
                        ),
                      )
                  ],
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
