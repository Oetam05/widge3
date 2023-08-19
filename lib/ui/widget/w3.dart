import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.value, required this.inc2, required this.dec2});
  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  final double value;
  final Function() inc2;
  final Function() dec2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$value', key: Key('W3Value')),
        IconButton(
          onPressed: inc2,
          icon: Icon(Icons.add),
          key: Key('W3Add'),
        ),
        IconButton(onPressed: dec2, icon: Icon(Icons.remove), key: Key('W3Sub'))
      ],
    );
    ;
  }
}
