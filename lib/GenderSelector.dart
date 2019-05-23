import 'package:flutter/material.dart';

import 'CustomContainer.dart';
import 'CustomRow.dart';
import 'IconWithSubtext.dart';
import 'icons/CustomIcons.dart';

class GenderSelector extends StatefulWidget {
  GenderSelector();

  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  static final activeColor = Color(0xFF003470);
  static final inActiveColor = Color(0xFF001E50);

  var maleColor;
  var femaleColor;
  int selectedGender;

  _GenderSelectorState();

  @override
  Widget build(BuildContext context) {
    return CustomRow(
      children: <Widget>[
        CustomContainer(
          child: IconWithSubtext(CustomIcons.male, "Male"),
          color: maleColor ?? inActiveColor,
          onPress: () {
            setState(() {
              updateSelection(1);
              femaleColor = inActiveColor;
              maleColor = activeColor;
            });
          },
        ),
        CustomContainer(
          child: IconWithSubtext(CustomIcons.female, "Female"),
          color: femaleColor ?? inActiveColor,
          onPress: () {
            setState(() {
              updateSelection(2);
              femaleColor = Colors.red;
              maleColor = inActiveColor;
            });
          },
        ),
      ],
    );
  }

  void updateSelection(int gender) {
    selectedGender = gender;
  }
}
