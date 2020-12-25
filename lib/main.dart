import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:project1/routes/custom_router.gr.dart';
import 'package:project1/utils/colors.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
    apiKeyGoogle: '<Key>',
  );

  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder<CustomRouter>(router: CustomRouter()),
      localizationsDelegates: translator.delegates,
      locale: translator.locale,
      supportedLocales: translator.locals(),
      theme: ThemeData(primaryColor: primaryColor),
    );
  }
}
