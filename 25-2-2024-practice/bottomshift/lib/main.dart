import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Shift"),
        backgroundColor: Colors.blue,
      ),
      
        
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (BuildContext context){
            return  Container(
              margin: const EdgeInsets.all(10),
            child: Column(
              
              children: [
                const Text("Create Task"),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Title",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      )
                    )
                    
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Content",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      )
                    )
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Date",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                      )
                    )
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){}, child: const Text("Submit")),
              ],
            ),
            );
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
