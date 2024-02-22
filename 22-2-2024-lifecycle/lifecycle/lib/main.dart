import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home:WidgetLifeCycle()
    );
  }
}

class WidgetLifeCycle extends StatefulWidget{
  const WidgetLifeCycle({super.key});

  @override
  State<WidgetLifeCycle> createState()=>_WidgetLifeCycleState();
}

class _WidgetLifeCycleState extends State<WidgetLifeCycle>{

  
  @override
  void initState(){
    super.initState();
    print("in initstate");
  }

  @override
  void deactivate(){
    super.deactivate();
    print("in deactivate");
  }

  @override
  void dispose(){
    super.dispose();
    print("in dispose");
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print("in didchangeDependencies");
  }

  @override
  void setState(VoidCallback fn){
    super.setState(fn);
      print("in setstate");
    
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Life Cycle'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            changecolor();
          },
          child: const Text('Change Color'),
        ),
      ),
    );
  }

  Color c=Colors.white;

  void changecolor(){
    setState(() {
      if(c==Colors.white){
        c=Colors.black;
      }
      else{
        c=Colors.white;
      }
    });
  }
}
