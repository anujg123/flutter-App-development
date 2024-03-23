import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
      "answerIndex": 2,
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
      "answerIndex": 0,
    },
    {
      "question": "Who is the founder of Amazon?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
      "answerIndex": 1,
    },
    {
      "question": "Who is the founder of Tesla?",
      "options": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
      "answerIndex": 3,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Lary Page", "Bill Gates", "ElonMusk"],
      "answerIndex": 1,
    },
  ];
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedIndex = -1;
  bool isTrue = false;
  int correctAnsIndex = -1;
   int score=0;

  void ansLogic(int selectedIndex) {
    correctAnsIndex = allQuestions[questionIndex]["answerIndex"];
    this.selectedIndex = selectedIndex;
    if (selectedIndex == correctAnsIndex) {
      isTrue = true;
      score ++;
    } else {
      isTrue = false;
    }
  }

  Color? getButtonColor(int selectedIndex) {
    if (isTrue && selectedIndex == this.selectedIndex) {
      return Colors.green;
    } else {
      if (selectedIndex == correctAnsIndex) {
        return Colors.green;
      }
      if (selectedIndex == this.selectedIndex && !isTrue) {
        return Colors.red;
      }
    }
    return null;
  }

  Scaffold isQuestionScreen() {
    if(questionIndex < allQuestions.length) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[questionIndex]["question"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ansLogic(0);
                });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    getButtonColor(0),
                  ),
                  fixedSize: const MaterialStatePropertyAll(
                    Size(380, 40),
                  ),
                  alignment: Alignment.centerLeft),
              child: Text(
                "A.${allQuestions[questionIndex]["options"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ansLogic(1);
                });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    getButtonColor(1),
                  ),
                  fixedSize: const MaterialStatePropertyAll(
                    Size(380, 40),
                  ),
                  alignment: Alignment.centerLeft),
              child: Text(
                "B.${allQuestions[questionIndex]["options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ansLogic(2);
                });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    getButtonColor(2),
                  ),
                  fixedSize: const MaterialStatePropertyAll(
                    Size(380, 40),
                  ),
                  alignment: Alignment.centerLeft),
              child: Text(
                "C.${allQuestions[questionIndex]["options"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ansLogic(3);
                });
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    getButtonColor(3),
                  ),
                  fixedSize: const MaterialStatePropertyAll(
                    Size(380, 40),
                  ),
                  alignment: Alignment.centerLeft),
              child: Text(
                "D.${allQuestions[questionIndex]["options"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           setState(() {
             questionIndex++;
           });
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
       return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 500,
                
               child: Image.network("",
               fit: BoxFit.cover,),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "You have complete all question successfully.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                // textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text("$score/$questionIndex",
              style: const TextStyle(
                fontSize: 25,
              ),),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange),
                ),
                onPressed: () {
                  setState(() {
                    questionIndex = 0; 
                    selectedIndex = -1; 
                    isTrue = false; 
                    correctAnsIndex = -1; 
                    score=0;
                  });
                },
                child: const Text("Restart Quiz",
                ),
              ),
            ],
          ),
          ],
        ),
      );
    }
  }
    
  

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
