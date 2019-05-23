import 'package:flutter/cupertino.dart';

class CustomRow extends StatelessWidget {
  final List<Widget> children;

  CustomRow({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
