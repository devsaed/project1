import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/data/data.dart';
import 'package:project1/models/store.dart';
import 'package:project1/routes/custom_router.gr.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/utils/styles.dart';

import 'drawer_item_widget.dart';

class CustomDrawer extends StatelessWidget {
  final Store store = stores[translator.currentLanguage][0];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));

    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: primaryColor),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(store.image),
            ),
            accountName: Text(
              store.title,
              style: Styles.titleStyle,
            ),
          ),
          DrawerItemWidget(
              label: 'language', icon: Icons.language, func: changeLang),
          DrawerItemWidget(
              label: 'messages',
              icon: Icons.message_outlined,
              func: closeDrawer),
          DrawerItemWidget(
              label: 'control_panel',
              icon: Icons.account_tree_sharp,
              func: closeDrawer),
          DrawerItemWidget(
              label: 'products',
              icon: Icons.shopping_bag_rounded,
              func: closeDrawer),
          DrawerItemWidget(
              label: 'contact_us', icon: Icons.phone, func: closeDrawer),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(translator.translate('logout'),
                          style: Styles.titleStyle),
                      SizedBox(width: 5.w),
                      Icon(Icons.logout),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          child: Text(
                            translator.translate('about_application'),
                            style: Styles.subTitleStyle,
                          ),
                          onTap: () => goToAboutScreen(context)),
                      GestureDetector(
                          child: Text(
                            translator.translate('policy'),
                            style: Styles.subTitleStyle,
                          ),
                          onTap: () => goToPolicyScreen(context)),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  goToPolicyScreen(context) {
    ExtendedNavigator.of(context).pushPolicyScreen();
  }

  goToAboutScreen(context) {
    ExtendedNavigator.of(context).pushAboutScreen();
  }

  changeLang(context) {
    Navigator.pop(context);
    translator.setNewLanguage(context,
        newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
        remember: true,
        restart: true);
  }

  closeDrawer(context) {
    Navigator.pop(context);
  }
}
