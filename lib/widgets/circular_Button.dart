import 'package:flutter/material.dart';
import 'package:project1/utils/colors.dart';

class CircularButton extends StatelessWidget {
  final IconData iconData;

  CircularButton(this.iconData);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(color: primaryColor, shape: BoxShape.circle),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
