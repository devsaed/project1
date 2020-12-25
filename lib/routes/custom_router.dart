import 'package:auto_route/auto_route_annotations.dart';
import 'package:project1/screens/about_screen.dart';
import 'package:project1/screens/department_screen.dart';
import 'package:project1/screens/policy_screen.dart';
import 'package:project1/screens/product_details_screen.dart';
import 'package:project1/screens/product_screen.dart';
import 'package:project1/screens/register_department_screen.dart';
import 'package:project1/screens/register_screen.dart';
import 'package:project1/screens/splash_screen.dart';
import 'package:project1/screens/store_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: DepartmentScreen),
    MaterialRoute(page: StoreScreen),
    MaterialRoute(page: ProductScreen),
    MaterialRoute(page: RegisterScreen),
    MaterialRoute(page: AboutScreen),
    MaterialRoute(page: PolicyScreen),
    MaterialRoute(page: ProductDetailsScreen),
    MaterialRoute(page: RegisterDepartmentScreen),
  ],
)
class $CustomRouter {}
