import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget{
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}
  class _RowColumnState extends State<RowColumn>{
  bool Box1color=false;
  bool Box2color=false;

  Color setBox1color(){
    if(Box1color == false){
      return Colors.red;
    }else{
      return Colors.black;
    }
  }
  Color setBox2color(){
    if(Box2color== false){
      return Colors.black;
    }else{
      return Colors.red;
    }
  }
    
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Row_Column"),
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
                  color: setBox1color(),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    Box1color=! Box1color;
                  });
                }, child: const Text("Button1"),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color:setBox2color(),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    Box2color=!Box2color;
                    
                  });
                }, child: const Text("Button2"),
                ),
              ],
            )
          ],
        ),
      );
    }
  }
