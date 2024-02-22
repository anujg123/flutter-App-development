import 'package:flutter/material.dart';

class NumList extends StatefulWidget {
  const NumList({super.key});

  @override
  State<NumList> createState() => _NumListstate();
}

class _NumListstate extends State<NumList> {

  List<int>num=[];
  int _currentIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count number"),
        backgroundColor: Colors.blue,
      ),
      body:ListView.builder(
        itemCount: num.length,
        itemBuilder: (context, index){
          return Container(
            height: 30,
            color: Colors.amber,
            margin: const EdgeInsets.all(10),
            child: Center(
              child:Text(
              num[index].toString(),
              )
            ),
          );
        }),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            num.add(_currentIndex++);
          });
        },
        child: Icon(Icons.add),),
      );
    
      
    
  }
}
