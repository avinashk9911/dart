import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQustion() {
    print("option chossen! ");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first App"),
          ),
          body: Column(
            children: [
              Text("the question! "),
              ElevatedButton(onPressed: answerQustion, child: Text("Answer 1")),
              ElevatedButton(onPressed: answerQustion, child: Text("Answer 2")),
              ElevatedButton(onPressed: answerQustion, child: Text("Answer 3")),
            ],
          )),
    );
  }
}
