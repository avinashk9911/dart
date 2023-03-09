import 'package:flutter/material.dart';
import './transection.dart';
import 'package:intl/intl.dart';

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

  String titleInput;
  String amountInput;

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
            Card(
              elevation: 5,
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      //I have added this line so that my elevated button can
                      // go to right cornner.
                      // there would't have any problem if we leke the
                      //button in the middle
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: "Title"),
                          onChanged: (value) => titleInput,
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: "Amount"),
                          onChanged: (value) => amountInput,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              print(amountInput);
                              print(titleInput);
                            },
                            child: Text("Add Transection")),
                      ])),
            ),
            Column(
              children: transections.map((tx) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                        padding: EdgeInsets.all(5),
                        // child: Text(tx.amount.toString()),
                        child: Text('\$${tx.amount}'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat().format(tx.date),
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
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
