import 'package:get/get.dart';
import 'package:petscare/controller/userController.dart';
import 'package:petscare/route/routeName.dart';
import 'package:petscare/screen/homepage/loadingPage.dart';
import 'package:petscare/screen/splash/splashpage.dart';
import 'package:petscare/screen/user/login.dart';
import 'package:petscare/screen/user/register.dart';

class AppRoute {
  static final routes = [
    GetPage(name: RouteName.initial, page: () => splashPage()),
    GetPage(name: RouteName.loadingpage, page: () => LoadingPage()),
    GetPage(
      name: RouteName.login,
      page: () => const LoginPage(),
      binding: BindingsBuilder(() {
        Get.put(UserController());
      }),
    ),
    GetPage(
      name: RouteName.register,
      page: () => const RegisterPage(),
      binding: BindingsBuilder(() {
        Get.put(UserController());
      }),
    ),
  ];
}
