import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/data/data.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/utils/styles.dart';
import 'package:project1/widgets/custom_drawer.dart';
import 'package:project1/widgets/department_widget.dart';
import 'package:project1/widgets/slider_widget.dart';

class DepartmentScreen extends StatelessWidget {
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
          title: Text(translator.translate('department')),
          centerTitle: true,
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SliderWidget(
                            images: [
                              "assets/images/xiaomi.jpg",
                              "assets/images/opppo.jpg",
                              "assets/images/Samsung.jpg",
                            ],
                          ),
                          Padding(
                            child: Text(
                              translator.translate('main_department'),
                              style: Styles.mainTitleStyle,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 10.h),
                          ),
                        ],
                      );
                    } else {
                      return DepartmentWidget(
                        department: departments[translator.currentLanguage]
                            [index],
                      );
                    }
                  },
                  itemCount: departments[translator.currentLanguage].length,
                ),
              ),
            ),
            SizedBox(
              height: 75.h,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: accentColor,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: CustomDrawer());
  }
}
