import 'package:flutter/material.dart';

class CustomAppbarWidget extends StatelessWidget implements PreferredSize {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
