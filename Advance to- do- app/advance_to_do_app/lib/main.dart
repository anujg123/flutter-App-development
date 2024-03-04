import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdvanceTODO(),
    );
  }
}

class AdvanceTODO extends StatefulWidget {
  const AdvanceTODO({super.key});

  @override
  State createState() => _AdvanceTODOState();
}

class _AdvanceTODOState extends State {
  List tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 149, 179, 255),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          const SizedBox(
            width: 10,
            height: 10,
          ),
          const Text(
            "Good Morning",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            "Anuj",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          Container(
            height: 600,
            width: 500,
            // color: Colors.grey,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                const Text("Create ToDo List"),
                const SizedBox(
                  height: 20,
                ),
                // ListView.builder(
                //     itemCount: tasks.length,
                //     itemBuilder: (context, index) {
                Expanded(child: 
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),

                     child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index){
                         return Row(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                            "data:image/png;base64,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"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                        const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("this si title"
                              // tasks[index].title,
                              // style: GoogleFonts.quicksand(
                              //     textStyle: const TextStyle(
                              //         fontSize: 14,
                              //         fontWeight: FontWeight.w800)),
                              ),
                          Text("this is content"
                              // tasks[index].content,
                              // style: GoogleFonts.quicksand(
                              //     textStyle: const TextStyle(
                              //         fontSize: 12,
                              //         fontWeight: FontWeight.w600)),
                              ),
                          Text("this is date"),
                        ],
                      ),
                      Spacer(),
                      const Column(
                         children: [
                          Icon(Icons.abc)
                         ],
                      )
                      
                    ],
                  );
                      })    
                  
                ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
