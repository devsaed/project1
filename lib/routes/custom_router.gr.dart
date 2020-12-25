// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../models/department.dart';
import '../models/product.dart';
import '../models/store.dart';
import '../screens/about_screen.dart';
import '../screens/department_screen.dart';
import '../screens/policy_screen.dart';
import '../screens/product_details_screen.dart';
import '../screens/product_screen.dart';
import '../screens/register_department_screen.dart';
import '../screens/register_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/store_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String departmentScreen = '/department-screen';
  static const String storeScreen = '/store-screen';
  static const String productScreen = '/product-screen';
  static const String registerScreen = '/register-screen';
  static const String aboutScreen = '/about-screen';
  static const String policyScreen = '/policy-screen';
  static const String productDetailsScreen = '/product-details-screen';
  static const String registerDepartmentScreen = '/register-department-screen';
  static const all = <String>{
    splashScreen,
    departmentScreen,
    storeScreen,
    productScreen,
    registerScreen,
    aboutScreen,
    policyScreen,
    productDetailsScreen,
    registerDepartmentScreen,
  };
}

class CustomRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.departmentScreen, page: DepartmentScreen),
    RouteDef(Routes.storeScreen, page: StoreScreen),
    RouteDef(Routes.productScreen, page: ProductScreen),
    RouteDef(Routes.registerScreen, page: RegisterScreen),
    RouteDef(Routes.aboutScreen, page: AboutScreen),
    RouteDef(Routes.policyScreen, page: PolicyScreen),
    RouteDef(Routes.productDetailsScreen, page: ProductDetailsScreen),
    RouteDef(Routes.registerDepartmentScreen, page: RegisterDepartmentScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    DepartmentScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DepartmentScreen(),
        settings: data,
      );
    },
    StoreScreen: (data) {
      final args = data.getArgs<StoreScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => StoreScreen(args.department),
        settings: data,
      );
    },
    ProductScreen: (data) {
      final args = data.getArgs<ProductScreenArguments>(
        orElse: () => ProductScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductScreen(store: args.store),
        settings: data,
      );
    },
    RegisterScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterScreen(),
        settings: data,
      );
    },
    AboutScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutScreen(),
        settings: data,
      );
    },
    PolicyScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PolicyScreen(),
        settings: data,
      );
    },
    ProductDetailsScreen: (data) {
      final args = data.getArgs<ProductDetailsScreenArguments>(
        orElse: () => ProductDetailsScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductDetailsScreen(
          product: args.product,
          store: args.store,
        ),
        settings: data,
      );
    },
    RegisterDepartmentScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterDepartmentScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension CustomRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushDepartmentScreen() =>
      push<dynamic>(Routes.departmentScreen);

  Future<dynamic> pushStoreScreen({
    @required Department department,
  }) =>
      push<dynamic>(
        Routes.storeScreen,
        arguments: StoreScreenArguments(department: department),
      );

  Future<dynamic> pushProductScreen({
    Store store,
  }) =>
      push<dynamic>(
        Routes.productScreen,
        arguments: ProductScreenArguments(store: store),
      );

  Future<dynamic> pushRegisterScreen() => push<dynamic>(Routes.registerScreen);

  Future<dynamic> pushAboutScreen() => push<dynamic>(Routes.aboutScreen);

  Future<dynamic> pushPolicyScreen() => push<dynamic>(Routes.policyScreen);

  Future<dynamic> pushProductDetailsScreen({
    Product product,
    Store store,
  }) =>
      push<dynamic>(
        Routes.productDetailsScreen,
        arguments:
            ProductDetailsScreenArguments(product: product, store: store),
      );

  Future<dynamic> pushRegisterDepartmentScreen() =>
      push<dynamic>(Routes.registerDepartmentScreen);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// StoreScreen arguments holder class
class StoreScreenArguments {
  final Department department;
  StoreScreenArguments({@required this.department});
}

/// ProductScreen arguments holder class
class ProductScreenArguments {
  final Store store;
  ProductScreenArguments({this.store});
}

/// ProductDetailsScreen arguments holder class
class ProductDetailsScreenArguments {
  final Product product;
  final Store store;
  ProductDetailsScreenArguments({this.product, this.store});
}
