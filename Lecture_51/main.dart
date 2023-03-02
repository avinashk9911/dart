import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

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
  final questions = const [
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
    if (_questionIndex < questions.length) {}

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
          body: _questionIndex < questions.length
              ? Column(
                  children: [
                    Question(
                      questions[_questionIndex]["questionText"] as String,
                    ),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text("you did it"),
                )),
    );
  }
}
