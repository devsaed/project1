import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/utils/colors.dart';

class SecondaryButtonWidget extends StatelessWidget {
  final label;
  final func;

  SecondaryButtonWidget({this.label, this.func});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));
    return FlatButton(
        onPressed: () {
          func(context);
        },
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Text(
          translator.translate(label),
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: primaryColor),
        ));
  }
}
