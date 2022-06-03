// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  build(BuildContext context) {
    var questions = [
      "What's your favourite color?",
      "What's your favourite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Quiz App"),
        ),
        body: Column(
          children: [
            Question(
              questionText: questions.elementAt(_questionIndex),
            ),
            RaisedButton(
              onPressed: _answerQuestions,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: () => {print("ans 2")},
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: () => {print("ans 3")},
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}

// class name extends StatelessWidget {
//   const name({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }