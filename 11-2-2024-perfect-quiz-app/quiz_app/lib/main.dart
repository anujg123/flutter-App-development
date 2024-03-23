import 'package:flutter/material.dart';

void main ()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState()=> _QuizAppState();
}

class SingleQuestionModel{
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const SingleQuestionModel({this.question,this.options, this.answerIndex});
}

class _QuizAppState extends State{

  List allQuestions=[
    (
      question: "Who is the founder of Microsoft?",
      options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
      answerIndex: 2,
    ),
    (
      question: "Who is the founder of Apple?",
      options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
      answerIndex: 0,
    ),
    (
      question: "Who is the founder of Amazon?",
      options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
      answerIndex: 1,
    ),
    (
      question: "Who is the founder of Tesla?",
      options: ["Steve Jobs", "Jeff Bezos", "Bill Gates", "ElonMusk"],
      answerIndex: 3,
    ),
    (
      question: "Who is the founder of Google?",
      options: ["Steve Jobs", "Lary Page", "Bill Gates", "ElonMusk"],
      answerIndex: 1,
    ),
  ];

  bool questionScreen=true;
  int questionIndex=0;
  int selectedIndex=-1;
  int score=0;

  MaterialStateProperty<Color?> getButtonColor(int buttonIndex){
     if(selectedIndex!=-1){
      if(buttonIndex==allQuestions[questionIndex].answerIndex){
        return const MaterialStatePropertyAll(Colors.green);
      }else if (buttonIndex==selectedIndex){
        return const MaterialStatePropertyAll(Colors.red);
      }else{
        return const MaterialStatePropertyAll(null);
      }
     }else{
      return const MaterialStatePropertyAll(null);
     }
  
  }

   void nextPage(){
    if(selectedIndex==-1){
        return;
        
      }
      if(selectedIndex==allQuestions[questionIndex].answerIndex){
      score +=1;
    }
    if(selectedIndex!=-1){
       if(questionIndex==allQuestions.length-1){
        setState(() {
          questionScreen= false;
        });
          
       }
       selectedIndex=-1;
       setState(() {
         questionIndex+=1;
       });
    }
    
   
   }
  Scaffold isQuestionScreen(){
    if(questionScreen==true){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App",
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
                allQuestions[questionIndex].question,
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
              style: ButtonStyle(
                backgroundColor: getButtonColor(0), 
                 
              ),
              onPressed: (){
              setState(() {
                if(selectedIndex==-1){
                  selectedIndex=0;
                }
              });
            }, 
            child: Text("${allQuestions[questionIndex].options[0]}",
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
              style: ButtonStyle(
                backgroundColor: getButtonColor(1),  
              ),
              onPressed: (){
              setState(() {
                if(selectedIndex==-1){
                  selectedIndex=1;
                }
              });
            }, 
            child: Text("${allQuestions[questionIndex].options[1]}",
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
              style: ButtonStyle(
                backgroundColor: getButtonColor(2), 
                 
              ),
              onPressed: (){
              setState(() {
                if(selectedIndex==-1){
                  selectedIndex=2;
                }
              });
            }, 
            child: Text("${allQuestions[questionIndex].options[2]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
            ),
            ),
            
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(style: ButtonStyle(
                backgroundColor: getButtonColor(3),  
              ),
              onPressed: (){
              setState(() {
                 if(selectedIndex==-1){
                  selectedIndex=3;
                 }
              });
            }, 
            child: Text("${allQuestions[questionIndex].options[3]}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
            ),
            ),
          ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: (){
              
                nextPage();
            
            },
            
          child: const Icon(Icons.forward,
          color: Colors.orange,),),
            
      );
    }else{
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
             
               Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAYxxLANq0b4FtuE6dgKGIlWt9oo1ZFmbqTA&usqp=CAU",
               height: 300,
               width: 400,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "You have complete successfully.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                // textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text("$score /${allQuestions.length}",
              style: const TextStyle(
                fontSize: 25,
              ),),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:  MaterialStatePropertyAll(Colors.orange),
                ),
                onPressed: () {
                  setState(() {
                    questionIndex = 0; 
                    selectedIndex = -1; 
                    
                    
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
Widget build(BuildContext context){
    return isQuestionScreen();
  }
}