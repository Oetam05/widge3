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
  double value = 1.5;
  void inc1() {
    setState(() {
      value = value + 0.1;
      value = double.parse(value.toStringAsFixed(1));
    });
    
  }

  void inc2() {
    setState(() {
      value = value + 1.0;
    });
    
  }

  void dec1() {
    setState(() {
      value = value - 0.1;
      value = double.parse(value.toStringAsFixed(1));
    });
    
  }

  void dec2() {
    setState(() {
      value = value - 1.0;
    });
    
  }

  void reset() {
    setState(() {
      value = 0.0;
    });
    
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
              onPressed: reset, icon: Icon(Icons.refresh), key: Key('Refresh')),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              W1(
                value: value,
                inc1: inc1,
                dec1: dec1,
              ),
              W2(value: value),
              W3(value: value,
              inc2: inc2,
              dec2: dec2,)
            ],
          ),
        ],
      )),
    );
  }
}
