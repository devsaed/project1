import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/models/store.dart';
import 'package:project1/routes/custom_router.gr.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/utils/styles.dart';

class StoreWidget extends StatelessWidget {
  final Store store;

  StoreWidget([this.store]);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));

    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        color: backgroundColor,
        child: Row(
          children: [
            Container(
              height: 80.h,
              width: 100.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      store.image,
                    ),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    store.title,
                    style: Styles.titleStyle,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Wrap(
                    children: [
                      Text(
                        store.subTitle,
                        style: Styles.subTitleStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 15.h,
            ),
          ],
        ),
      ),
      onTap: () {
        ExtendedNavigator.of(context).pushProductScreen(store: store);
      },
    );
  }
}
