import 'package:flutter/material.dart';

class portfolio extends StatefulWidget {
  const portfolio({super.key});

  @override
  State<portfolio> createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
  int currentContainerIndex = 0;

  List<Widget> containers = [
    const Text("Name : Anuj Ghorpade"),
    Container(
      height: 100,
      width: 300,
      child: Image.asset("assets/images/myphoto.jpg"),
    ),
    const Text("College Name : Sinhgad College of Science"),
    Container(
      height: 100,
      width: 300,
      child: Image.network(
          "data:image/jpeg;base64,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"),
    ),
    const Text("Dream Company : Microsoft"),
    Container(
      height: 100,
      width: 300,
      child: Image.network(
          "data:image/jpeg;base64,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"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Portfolio",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          containers[currentContainerIndex],
          const SizedBox(
            height: 10,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentContainerIndex++;
            if (currentContainerIndex >= containers.length) {
              currentContainerIndex = 0;
            }
          });
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
