import 'package:get/get.dart';
import 'package:petscare/route/routeName.dart';
import 'package:petscare/screen/homepage/loadingPage.dart';
import 'package:petscare/screen/splash/splashpage.dart';

class AppRoute {
  static final routes = [
    GetPage(name: RouteName.initial, page: () => splashPage()),
    GetPage(name: RouteName.loadingpage, page: () => LoadingPage()),
  ];
}
