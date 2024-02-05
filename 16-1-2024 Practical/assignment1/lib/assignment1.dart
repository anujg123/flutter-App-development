import 'package:flutter/material.dart';
import 'dart:math';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int _palindromeCount = 0;
  int _armstrongCount = 0;
  int _currentIndex = 0;
  int _countStrongnum=0;

  final List<int> numList = [10, 11, 153, 40, 15];

  void showPalindromeNum() {
    setState(() {
      int num = numList[_currentIndex];
      int temp = num;
      int temp2 = 0;

      while (temp != 0) {
        int rem = temp % 10;
        temp2 = (temp2 * 10) + rem;
        temp = temp ~/ 10;
      }

      if (temp2 == num) _palindromeCount++;

      _currentIndex = (_currentIndex + 1) % numList.length;
    });
  }

  void showArmstrongNum() {
  setState(() {
    int num = numList[_currentIndex];
    int temp = num;
    int numOfDigits = num.toString().length;
    int temp2 = 0;

    while (temp != 0) {
      int rem = temp % 10;
      temp2 += pow(rem, numOfDigits).toInt(); 
      temp = temp ~/ 10;
    }

    if (temp2 == num) _armstrongCount++;

    _currentIndex = (_currentIndex + 1) % numList.length;
  });
}

void countStrongNumbers() {
    setState(() {
    
      for (int num in numList) {
        int temp = num;
        int numOfDigits = num.toString().length;
        int temp2 = 0;

        while (temp != 0) {
          int rem = temp % 10;
          temp2 += pow(rem, numOfDigits).toInt();
          temp = temp ~/ 10;
        }

        if (temp2 == num) _countStrongnum++;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome and Armstrong Numbers"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Count of Palindrome Numbers: $_palindromeCount'),
            const SizedBox(
              height: 20,
            ),
            Text('Count of Armstrong Numbers: $_armstrongCount'),
            const SizedBox(
              height: 20,
            ),
            Text('Count of strong Numbers: $_countStrongnum'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showPalindromeNum,
              child: const Text("Check Palindrome"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: showArmstrongNum,
              child: const Text("Check Armstrong"),
            ),
            const SizedBox(
              height: 20,
            ),
             ElevatedButton(
              onPressed: countStrongNumbers,
              child: const Text("Check strongnumber"),
            ),
             const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _palindromeCount = 0;
                  _armstrongCount = 0;
                  _countStrongnum=0;
                });
              },
              child: const Text("Reset Counts"),
            ),
          ],
        ),
      ),
    );
  }
}
