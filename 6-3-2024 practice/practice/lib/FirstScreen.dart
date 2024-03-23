import 'dart:ui';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter/widgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 117, 116, 114),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Icon(Icons.menu),
                Spacer(),
                Icon(Icons.notifications),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to New",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Education",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your key',
                  border: InputBorder.none,
                  suffixIcon: const Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                        // color: Colors.orange,
                        ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.pink,
                    ),
                  ),
                ),
                cursorColor: Colors.amber,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Courses for you"),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              height: 250,
                              width: 200,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Color.fromRGBO(197, 4, 98, 1),
                                Color.fromRGBO(80, 3, 112, 1)
                              ]),
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text("UX Designer from Scratch"),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Image.asset(
                                    "assets/images/card1.jpg",
                                    // height: 200,
                                    // width: 100,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 250,
                            width: 200,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                              Color.fromRGBO(0, 77, 228, 1),
                              Color.fromRGBO(1, 47, 135, 1)
                            ]),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text("Design thinking the Bring"),
                                const SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/images/card3.jpg",
                                  // height: 220,
                                  // width: 100,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("Course by Catagorys"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 15,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.amber,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
