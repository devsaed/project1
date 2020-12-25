import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project1/routes/custom_router.gr.dart';
import 'package:project1/utils/styles.dart';

class ProductWidget extends StatelessWidget {
  final product;
  final store;

  ProductWidget(this.product, this.store);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                product.image,
                fit: BoxFit.cover,
                height: 130.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: Styles.titleStyle,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          product.price,
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios, size: 12),
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.white, width: 1.w)),
        ),
      ),
      onTap: () {
        ExtendedNavigator.of(context)
            .pushProductDetailsScreen(store: store, product: product);
      },
    );
  }
}
