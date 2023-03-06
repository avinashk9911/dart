import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          // THIS WILL ALSO WORK

          // children: <Widget>[
          //   (Card(
          //     color: Color.fromARGB(255, 129, 233, 184),
          //     child: Container(width: double.infinity, child: Text("Chart!")),
          //     elevation: 5,
          //   )),

          // insted of doing making a Containor inside a 'Card' we will rap
          // the 'Card' inside a Containor;
          //
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          // we could have done this insted of defining 'width: double.infinity'
          // but this will give the complete width to both the Card
          // so if we want to give complete width to only one Card then we
          // have to seperately specify each Card
          children: <Widget>[
            Container(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 129, 233, 184),
                  child: Text("chart"),
                  elevation: 5,
                )),
            Card(
              child: Text("list of expences"),
            )
          ],
        ));
  }
}
