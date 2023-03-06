import 'package:flutter/material.dart';
import './transection.dart';

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
  final List<Transection> transections = [
    Transection(id: 't1', title: "Shoues", amount: 15000, date: DateTime.now()),
    Transection(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 3000,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                child: Card(
                  color: Color.fromARGB(255, 129, 233, 184),
                  child: Text("chart"),
                  elevation: 5,
                )),
            Column(
              children: transections.map((tx) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        child: Text(tx.amount.toString()),
                      ),
                      Column(
                        children: [
                          Text(tx.title),
                          Text(tx.date.toString()),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ));
  }
}
