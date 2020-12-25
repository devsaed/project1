import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/data/data.dart';
import 'package:project1/models/department.dart';
import 'package:project1/models/store.dart';
import 'package:project1/utils/colors.dart';
import 'package:project1/widgets/store_widget.dart';

class StoreScreen extends StatelessWidget {
  final Department department;

  StoreScreen(this.department);

  @override
  Widget build(BuildContext context) {
    List<Store> filter = stores[translator.currentLanguage]
        .where((element) => element.departmentId == department.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(translator.translate('stores')),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Container(
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              Divider(height: 3, color: Colors.white),
          itemBuilder: (context, index) {
            return StoreWidget(filter[index]);
          },
          itemCount: filter.length,
        ),
      ),
    );
  }
}
