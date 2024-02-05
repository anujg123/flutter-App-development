import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1state();
}

class _Assignment1state extends State<Assignment1> {
  int? _count = 0;

  void _printTablevalue() {
    setState(() {
      _count = _count! +2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table of 2"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Click button to print table value:',
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$_count',
              
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _printTablevalue, 
            child: const Text("Print"),
            ),
          ],
        ),
      ),
      
    );
  }
}
