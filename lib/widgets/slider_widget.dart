import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderWidget extends StatelessWidget {
  final List<String> images;

  SliderWidget({this.images});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));

    return SizedBox(
      height: 160.h,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        images: images.map((e) => ExactAssetImage(e)).toList(),
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.lightGreenAccent,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        borderRadius: false,
        moveIndicatorFromBottom: 180.0,
        noRadiusForIndicator: true,
        animationDuration: Duration(seconds: 2),
      ),
    );
  }
}
