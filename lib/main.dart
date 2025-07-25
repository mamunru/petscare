import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petscare/route/appRoute.dart';
import 'package:petscare/route/routeName.dart';
import 'package:petscare/theme/appTheme.dart';
import 'package:petscare/theme/themeController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Care App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: RouteName.initial,
      getPages: AppRoute.routes,
    );
  }
}
