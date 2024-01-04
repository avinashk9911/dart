import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                  child: Text("Row1"),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.amber,
                      child: Text("Container 1 of Row2"),
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.green,
                      child: Text("Container 2 of Row2"),
                    ),
                  ],
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                  child: Text("Row 3"),
                )
              ],
            )
            // Container(
            //   height: 100.0,
            //   width: 100.0,
            //   color: Colors.red,
            //   child: Text("Container 1"),
            // ),
            // Container(
            //   height: 100.0,
            //   width: 100.0,
            //   color: Colors.blue,
            //   child: Text("Container 2"),
            // ),
          ],
        ),
      ),
    ),
  ));
}
