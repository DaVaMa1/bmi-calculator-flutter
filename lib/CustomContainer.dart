import 'package:flutter/cupertino.dart';

class CustomContainer extends StatefulWidget {
  final Widget child;
  final Color color;
  final Function onPress;

  CustomContainer({this.child, this.color, this.onPress});

  @override
  _CustomContainerState createState() =>
      _CustomContainerState(child, color, onPress);
}

class _CustomContainerState extends State<CustomContainer> {
  final Widget child;

  final Color color;
  final Function onPress;

  _CustomContainerState(this.child, this.color, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
