import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/utils/styles.dart';
import 'package:project1/widgets/circular_Button.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));

    return Scaffold(
      appBar: AppBar(
        title: Text(translator.translate('about_application')),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 200.h,
              width: 300.w,
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              translator.translate('about_application'),
              style: Styles.mainTitleStyle,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(translator.translate('about'),
                style: Styles.titleStyle, textAlign: TextAlign.justify),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                CircularButton(Icons.share_outlined),
                SizedBox(
                  width: 5.w,
                ),
                CircularButton(Icons.call),
              ],
            )
          ],
        ),
      ),
    );
  }
}
