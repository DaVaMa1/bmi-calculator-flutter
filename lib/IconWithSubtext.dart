import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWithSubtext extends StatelessWidget {
  final IconData icon;
  final String subtext;

  IconWithSubtext(this.icon, this.subtext);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            size: 60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subtext,
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ],
    );
  }
}
