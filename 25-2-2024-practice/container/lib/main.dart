import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     home: Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Center(
       child: Container(
        height: 200,
        width: 200,
        
        decoration:  BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: const Color.fromARGB(255, 0, 0, 0)
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.red,
              offset: Offset(10,10),
              blurRadius: 20
            )
          ]

        ),
        child: Image.network("https://imgd.aeplcdn.com/310x174/n/cw/ec/115871/mt-15-v2-front-suspension.jpeg?isig=0&q=80",
        height: 120,
        width: 120,),
       ),
      ), 
    )
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

 

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
 
//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Container"),
//       ),
//       body: Center(
//        child: Container(
//         height: 120,
//         width: 120,
//         color: const Color.fromARGB(255, 255, 215, 95),
//         decoration: const BoxDecoration(
//           color: Colors.amber,
//           shape: BoxShape.circle,

//         ),
//        ),
//       ), 
//     );
//   }
// }
