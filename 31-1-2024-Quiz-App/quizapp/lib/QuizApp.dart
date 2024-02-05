import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int quizcount=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tech Quiz"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text("Questions $quizcount /10",
              style: const TextStyle(
                fontSize: 20,
              ),),
              const SizedBox(
                height: 20,
              ),
              // const Text("Question : What is Flutter"),
              const SizedBox(
                // width: 100,
                // height: 50,
                child: Text("what is flutter",
                style: TextStyle(
                  fontSize: 15,
                ),),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Option 1"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 200.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Option 2"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 200.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Option 3"),
                style: const ButtonStyle(
                  backgroundColor:MaterialStatePropertyAll(Colors.blue),
                  padding:MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 200)
                ),
                )
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Option 4"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 200.0),
                  ),
                ),
              ),
              
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          quizcount ++;
        });
      },
      child: const Icon(Icons.arrow_forward),),
    );
  }
}
