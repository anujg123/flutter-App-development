import 'package:flutter/material.dart';

 class Assignment10 extends StatefulWidget{
  const Assignment10({super.key});

  @override
  State<Assignment10> createState()=> _Assignment10State();
  
 }

 class _Assignment10State extends State<Assignment10> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text("Hello Core2Web",
        style: TextStyle(
        
        ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){} 
            ),
            IconButton(
              icon: Icon(Icons.account_balance_rounded),
              onPressed: (){}
            ),
          
        ],
      ),
      
      body: SingleChildScrollView(
       
        child: Column(
           
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                child :Column(
                  children: [
                    const SizedBox(
                       height: 20,),
                       Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple,
                    ),
                ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                ),
                
              ],
      ),
       SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 400,
                    width: 300,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 400,
                    width: 300,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 400,
                    width: 300,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 400,
                    width: 300,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 400,
                    width: 300,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 400,
                    width: 300,
                  ),
                  Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 400,
                    width: 300,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Container(
                  height: 300,
                  width: 300,
                  color: Colors.purple,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Container(
                  height: 300,
                  width: 300,
                  color: Colors.orange,
                ),
                const SizedBox(
                  height: 20,
                ),
                 Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.orange,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.green,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.yellow,
                ),
              ],
            )
          ]
        ),
      ),
    );
  

  }
 }