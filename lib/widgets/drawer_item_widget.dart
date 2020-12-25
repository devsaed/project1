import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/utils/styles.dart';

class DrawerItemWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function func;

  DrawerItemWidget({this.label, this.icon, this.func});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
            leading: Icon(icon),
            title: Text(translator.translate(label), style: Styles.titleStyle),
            onTap: () => func(context)),
        Divider(color: Colors.white),
      ],
    );
  }
}
