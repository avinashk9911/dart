import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

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
  var _questionIndex = 0;
  void _answerQustion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("option chossen! ");
  }

  Widget build(BuildContext context) {
    var questions = [
      "what's your favorate color? ",
      "what's your favorate animal"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first App"),
          ),
          body: Column(
            children: [
              Text(
                questions[_questionIndex],
              ),
              ElevatedButton(
                  onPressed: _answerQustion, child: Text("Answer 1")),
              ElevatedButton(
                  onPressed: _answerQustion, child: Text("Answer 2")),
              ElevatedButton(
                  onPressed: _answerQustion, child: Text("Answer 3")),
            ],
          )),
    );
  }
}
