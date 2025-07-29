import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:petscare/config/boxStorage.dart';
import 'package:petscare/route/routeName.dart';

class InitController extends GetxController {
  final locale = const Locale('en', 'US');
  final _box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    // Wait for 3 seconds, then navigate to the loading route
    LoadingHome();
  }

  void LoadingHome() async {
    //splash screen show time
    _box.read(BoxStorage.language) ?? _box.write(BoxStorage.language, 'en');
    Get.updateLocale(Locale(_box.read(BoxStorage.language) ?? 'en'));

    await Future.delayed(const Duration(seconds: 3));
    //_box.remove;
    //redirect HomePage Route after 2 seconds
    print('-------------Login Route --------------');

    Get.offAllNamed(RouteName.login);

    //checkversion();
  }

  void changeLanguage(String langCode) {
    // Change the app language based on the selected language code
    print('Language changed to: $langCode');
    _box.write(BoxStorage.language, langCode);
    Get.updateLocale(Locale(langCode));
  }
}
