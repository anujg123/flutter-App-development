import 'package:flutter/material.dart';

class ToggleBox extends StatefulWidget{
  const ToggleBox({super.key});

  State<ToggleBox>createState()=>_ToggleBoxstate();
}
class _ToggleBoxstate extends State<ToggleBox>{
  int box1count=0;
  int box2count=0;

  // bool box1color=false;
  // bool box2color=false;

  Color setBox1Color(){
    if(box1count==0){
      return Colors.red;
    }
    if(box1count==1){
      return Colors.green;
    }
    if(box1count==2){
      return Colors.blue;
    }else{
      box1count=0;
      return Colors.red;
    }
  }
  Color setBox2Color(){
    if(box2count==0){
      return Colors.black;
    }
    if(box2count==1){
      return Colors.yellow;
    }
    if(box2count==2){
      return Colors.orange;
    }else{
      box2count=0;
      return Colors.black;
    }
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Box"),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setBox1Color(),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  box1count++;
                });
              }, 
              child: const Text("Button1"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: setBox2Color(),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  box2count++;
                });
              }, 
              child: const Text("Button2"),
              ),
            ],
          )
        ],
      ),
    );
  }
}