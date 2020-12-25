import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final Function func;
  final String label;

  CustomButton({this.func, this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: RaisedButton(
        onPressed: () {
          func();
        },
        child: Text(
          translator.translate('Register'),
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'cairo',
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        color: primaryColor,
        padding: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
