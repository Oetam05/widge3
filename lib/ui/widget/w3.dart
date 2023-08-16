import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  const W3({super.key, required this.value});
  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$value', key: Key('W3Value')),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.add),
          key: Key('W3Add'),
        ),
        IconButton(onPressed: null, icon: Icon(Icons.remove), key: Key('W3Sub'))
      ],
    );
    ;
  }
}
