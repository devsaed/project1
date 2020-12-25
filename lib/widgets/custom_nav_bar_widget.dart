import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CustomNavBarWidget extends StatefulWidget {
  int selectIndex = 0;

  @override
  _CustomNavBarWidgetState createState() => _CustomNavBarWidgetState();
}

class _CustomNavBarWidgetState extends State<CustomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));
    return BottomNavigationBar(
      currentIndex: widget.selectIndex,
      onTap: (i) {
        widget.selectIndex = i;
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/messages.svg',
              height: 20.h,
              width: 20.w,
            ),
            label: "messages"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/dial.svg',
              height: 20.h,
              width: 20.w,
            ),
            label: "dial"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/problem.svg',
              height: 20.h,
              width: 20.w,
            ),
            label: "problem"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/svg/share.svg',
              height: 20.h,
              width: 20.w,
            ),
            label: "messages"),
      ],
    );
  }
}
