import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Underwear',
      amount: 24.99,
      date: DateTime.now(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            // padding: EdgeInsets.all(40),
            child: Card(
              color: Colors.blue,
              child: Text(
                'CHART',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              elevation: 5,
            ),
          ),
          Column(
            children: transactions.map((tx) {
                return Card(child: Text(tx.title),);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
