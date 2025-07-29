import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petscare/binding/init.dart';
import 'package:petscare/config/colors.dart';
import 'package:petscare/config/translate.dart';
import 'package:petscare/controller/initController.dart';
import 'package:petscare/route/appRoute.dart';
import 'package:petscare/route/routeName.dart';
import 'package:petscare/theme/appTheme.dart';

void main() {
  InitialBindings().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    InitController initController = Get.find<InitController>();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Care App',
      translations: AppTranslations(), // your translations
      locale: initController.locale, // initial locale
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          backgroundColor: MyColors.primaryColor,
          elevation: 0,
        ),
      ),
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: RouteName.initial,
      getPages: AppRoute.routes,
    );
  }
}
