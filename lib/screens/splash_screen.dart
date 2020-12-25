import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/routes/custom_router.gr.dart';
import 'package:project1/widgets/secondary_button_widget.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        child: Column(
          children: [
            SizedBox(height: 250.h),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/logo.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SecondaryButtonWidget(
                        label: 'skip',
                        func: navigationToDepartmentScreen,
                      ),
                      SecondaryButtonWidget(
                        label: 'register',
                        func: navigationToRegisterScreen,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigationToDepartmentScreen(context) {
    ExtendedNavigator.of(context).pushDepartmentScreen();
  }

  navigationToRegisterScreen(context) {
    ExtendedNavigator.of(context).pushRegisterScreen();
  }
}
