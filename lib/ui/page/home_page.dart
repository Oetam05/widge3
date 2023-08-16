import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0.0;
  void inc1() {
    value = value + 0.1;
  }

  void dec1() {
    value = value - 0.1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          IconButton(
              onPressed: null, icon: Icon(Icons.refresh), key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(
                value: value,
                inc1: inc1,
                dec1: dec1,
              ),
              W2(value: value),
              W3(value: value)
            ],
          ),
        ],
      )),
    );
  }
}
