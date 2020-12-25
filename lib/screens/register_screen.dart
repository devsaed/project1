import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/routes/custom_router.gr.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/utils/styles.dart';
import 'package:project1/widgets/register_widget.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(translator.translate('register')),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    translator.translate('new_account'),
                    style: Styles.mainTitleStyle,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(translator.translate('register_msg'),
                      style: Styles.titleStyle),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            GestureDetector(
              child: RegisterWidget(
                  svgPath: 'assets/svg/store.svg', label: 'stores'),
              onTap: () {
                ExtendedNavigator.of(context).pushRegisterDepartmentScreen();
              },
            ),
            SizedBox(
              height: 50.h,
            ),
            GestureDetector(
              child: RegisterWidget(
                  svgPath: 'assets/svg/customer.svg', label: 'customer'),
              onTap: () {
                ExtendedNavigator.of(context).pushRegisterDepartmentScreen();
              },
            )
          ],
        ),
      ),
    );
  }
}
