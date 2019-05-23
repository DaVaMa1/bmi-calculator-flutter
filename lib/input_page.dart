import 'package:flutter/material.dart';
import 'CustomContainer.dart';
import 'CustomRow.dart';
import 'GenderSelector.dart';
import 'IconWithSubtext.dart';
import 'Incrementer.dart';
import 'SliderWithValueAbove.dart';
import 'icons/CustomIcons.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final activeColor = Color(0xFF003470);
  static final inActiveColor = Color(0xFF001E50);
  var height = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GenderSelector(),
          CustomRow(
            children: <Widget>[
              CustomContainer(
                child: SliderWithValueAbove((double lenght) {
                  setState(() {
                    height = lenght;
                  });
                }),
                color: inActiveColor,
                onPress: () {},
              ),
            ],
          ),
          CustomRow(
            children: <Widget>[
              CustomContainer(
                child: Incrementer(80, "Weight"),
                color: inActiveColor,
                onPress: () {},
              ),
              CustomContainer(
                child: Incrementer(25, "Age"),
                color: inActiveColor,
                onPress: () {},
              )
            ],
          ),
          Container(
            color: Colors.pink,
            child: FlatButton(
              child: Text(
                "Calculate",
                style: Theme.of(context).textTheme.display2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum Gender { male, female, attackHelicopter }
