import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    // or:  static final questions= [
    {
      'questionText': "What is your favorite color? ",
      "answers": ['Black', 'Red', 'Green', 'White']
    },
    {
      "questionText": "What is your favorite animal? ",
      "answers": ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      "questionText": "What is your favorite instructor",
      "answers": ["Max", "Rax", "Pax", "Tax"],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {}

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("option chossen! ");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
