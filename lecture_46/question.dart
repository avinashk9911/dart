import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText); // This auto generated is a constructor
  // which is taking super.key(which I don't know what it is)

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double
          .infinity, // we are giving this containor the complete width that the screen have.
      margin: EdgeInsets.all(10),
      child: Text(
        // from hear we are styling our questionText
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
