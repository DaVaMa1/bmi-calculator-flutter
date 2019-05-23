import 'package:flutter/material.dart';

class SliderWithValueAbove extends StatefulWidget {
  final Function(double lenght) callBack;

  SliderWithValueAbove(this.callBack);

  @override
  _SliderWithValueAboveState createState() =>
      _SliderWithValueAboveState(callBack);
}

class _SliderWithValueAboveState extends State<SliderWithValueAbove> {
  var currentValue = 150.0;

  final callBack;

  _SliderWithValueAboveState(this.callBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0),
            child: Text(
              "Height",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Row(
            children: [
              Text(
                currentValue.toInt().toString(),
                style: Theme.of(context).textTheme.display1,
              ),
              Text("cm"),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
          ),
          Slider(
            value: currentValue,
            min: 100,
            max: 250,
            onChanged: (newValue) {
              setState(() {
                currentValue = newValue;
                callBack(newValue);
              });
            },
          )
        ],
      ),
    );
  }
}
