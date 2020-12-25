import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/models/product.dart';
import 'package:project1/models/store.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/utils/styles.dart';
import 'package:project1/widgets/custom_nav_bar_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  final Store store;

  ProductDetailsScreen({this.product, this.store});

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
          backgroundColor: primaryColor,
          centerTitle: true,
          title: Text(translator.translate('product_details')),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(product.image), fit: BoxFit.contain),
                  )),
              Row(
                children: [
                  Spacer(),
                  Container(
                    height: 40.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                    child: Center(
                        child: Text(
                      product.price,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: Styles.mainTitleStyle,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      product.description,
                      style: Styles.subTitleStyle,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(store.image),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          store.title,
                          style: Styles.titleStyle,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomNavBarWidget());
  }
}
