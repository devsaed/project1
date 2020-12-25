import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/utils/styles.dart';

class RegisterWidget extends StatelessWidget {
  final String svgPath;
  final String label;

  RegisterWidget({this.svgPath, this.label});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
      alignment: Alignment.center,
      width: 160.w,
      height: 160.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                blurRadius: 2, spreadRadius: 1, color: Colors.grey.shade300)
          ],
          color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(svgPath),
          SizedBox(
            height: 5.h,
          ),
          Text(translator.translate(label), style: Styles.titleStyle),
        ],
      ),
    );
  }
}
