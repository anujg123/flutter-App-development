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
                
               child: Image.network("data:image/jpeg;base64,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",
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
