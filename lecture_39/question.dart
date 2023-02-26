import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText); // This auto generated is a constructor
  // which is taking super.key(which I don't know what it is)

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
