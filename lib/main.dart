import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        sliderTheme: ThemeData.dark().sliderTheme.copyWith(
            activeTrackColor: Colors.red,
            thumbColor: Colors.red,
            inactiveTrackColor: Colors.white70,
            overlayColor: Colors.red[800]),
        textTheme: ThemeData.dark().textTheme.copyWith(
              title: TextStyle(fontSize: 22, color: Colors.white30),
              display1: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: SafeArea(
        child: InputPage(),
      ),
    );
  }
}
