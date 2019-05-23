import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final icon;
  final onPressed;

  CustomFloatingActionButton(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      backgroundColor: Color(0xFF9DA7C9),
    );
  }
}
