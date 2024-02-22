import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container"),
          centerTitle: true,
        ),
        // body: Container(
        //   padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
        //   width: 100,
        //   height: 100,
        //   color: Colors.blue,
        // ),
        body: Center(
          child: Column(
            children: [
              // Container(
              //   height: 200,
              //   width: 200,
              //   decoration: BoxDecoration(
              //     color: Colors.amber,
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(20),
              //     ),
              //     border: Border.all(
              //       color: Colors.blue,
              //       width: 5,
              //     ),
              //   ),
              // ),

              // Container(
              //   width: 200,
              //   height: 200,
              //   decoration: BoxDecoration(
              //       color: Colors.amber,
              //       borderRadius: const BorderRadius.all(
              //         Radius.circular(20),
              //       ),
              //       border: Border.all(
              //         color: Colors.blue,
              //         width: 5,
              //       ),
              //       boxShadow: const [
              //         BoxShadow(
              //             color: Colors.purple,
              //             offset: Offset(30, 30),
              //             blurRadius: 10),
              //         BoxShadow(
              //             color: Colors.red,
              //             offset: Offset(20, 20),
              //             blurRadius: 10),
              //         BoxShadow(
              //             color: Colors.green,
              //             offset: Offset(10, 10),
              //             blurRadius: 10),
              //       ]),
              // ),

              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.blue, width: 5),
                    gradient: const LinearGradient(
                      stops: [0.2, 0.4],
                      colors: [Colors.red, Colors.yellow],
                    )
                  ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}