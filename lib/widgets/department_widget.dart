import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/models/department.dart';
import 'package:project1/routes/custom_router.gr.dart';
import 'package:project1/utils/styles.dart';

class DepartmentWidget extends StatelessWidget {
  final Department department;

  DepartmentWidget({this.department});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        elevation: 5.w,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.w),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.w),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        department.image,
                      ),
                      fit: BoxFit.fill),
                ),
                width: 120.w,
                height: 100.h,
              ),
            ),
            Flexible(
              child: Container(
                child: Center(
                  child: Text(
                    department.name,
                    style: Styles.mainTitleStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        print(department.id);
        ExtendedNavigator.of(context).pushStoreScreen(department: department);
      },
    );
  }
}
