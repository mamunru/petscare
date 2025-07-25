import 'dart:async';
import 'package:get/get.dart';

class InitController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Wait for 3 seconds, then navigate to the loading route
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed('/loading');
    });
  }
}
