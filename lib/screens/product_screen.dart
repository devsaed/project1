import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/data/data.dart';
import 'package:project1/models/product.dart';
import 'package:project1/models/store.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/widgets/product_widget.dart';

class ProductScreen extends StatelessWidget {
  final Store store;

  ProductScreen({this.store});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(
          411.42857142857144,
          683.4285714285714,
        ));

    List<Product> filter = products[translator.currentLanguage]
        .where((element) => element.storeId == store.id)
        .toList();

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(translator.translate('products')),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        child: Padding(
          padding: EdgeInsets.only(bottom: 60.h),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                childAspectRatio: 0.8,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return ProductWidget(filter[index], store);
            },
            itemCount: filter.length,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: accentColor,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
