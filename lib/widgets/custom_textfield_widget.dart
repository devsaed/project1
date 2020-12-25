import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/utils/colors.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function saveFunction;
  final Function validateFunction;
  final bool isPassword;
  final String label;

  CustomTextFieldWidget(
      {this.saveFunction,
      this.validateFunction,
      this.label,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: translator.translate(label),
        fillColor: backgroundColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        filled: true,
      ),
      onSaved: (val) {
        saveFunction(val);
      },
      validator: (val) {
        validateFunction(val);
      },
    );
  }
}
