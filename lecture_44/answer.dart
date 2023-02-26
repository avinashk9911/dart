import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandeler;

  Answer(this.selectHandeler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
          Color.fromARGB(255, 245, 218, 139),
        )),
        child: const Text("Answer 1"),
        onPressed: selectHandeler,
      ),
    );
  }
}
