import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2state();
}

class _Assignment2state extends State<Assignment2> {
  bool box1color = false;
  bool box2color = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Box"),
        backgroundColor: Colors.blue,
      ),
      body:
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box1color ? Colors.red : Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        box1color =!box1color;
                      });
                    },
                    child: const Text("Color Box"),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: box2color ? Colors.blue : Colors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        box2color=!box2color;
                      });
                    }, child: const Text("Color Box2"),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            )
           
          ],
        ),
      );
      
    
  }
}
