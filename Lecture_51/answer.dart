import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandeler;
  final String answerText;

  Answer(this.selectHandeler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
          Color.fromARGB(255, 245, 218, 139),
        )),
        onPressed: selectHandeler,
        child: Text(answerText),
      ),
    );
  }
}
