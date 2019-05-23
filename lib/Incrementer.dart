import 'package:flutter/material.dart';

import 'CustomFloatingActionButton.dart';
import 'icons/CustomIcons.dart';

class Incrementer extends StatefulWidget {
  final int currentValue;
  final String title;

  Incrementer(this.currentValue, this.title);

  @override
  _IncrementerState createState() => _IncrementerState(currentValue, title);
}

class _IncrementerState extends State<Incrementer> {
  int currentValue;
  String title;

  _IncrementerState(this.currentValue, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        Text(
          currentValue.toString(),
          style: Theme.of(context).textTheme.display1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new CustomFloatingActionButton(CustomIcons.minus, () {
              setState(() {
                currentValue--;
              });
            }),
            new CustomFloatingActionButton(CustomIcons.plus, () {
              setState(() {
                currentValue++;
              });
            })
          ],
        )
      ],
    );
  }
}
