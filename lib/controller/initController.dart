import 'dart:async';
import 'package:get/get.dart';
import 'package:petscare/route/routeName.dart';

class InitController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Wait for 3 seconds, then navigate to the loading route
    LoadingHome();
  }

  void LoadingHome() async {
    //splash screen show time
    await Future.delayed(const Duration(seconds: 3));
    //_box.remove;
    //redirect HomePage Route after 2 seconds
    print('-------------Login Route --------------');
    Get.offAllNamed(RouteName.loadingpage);

    //checkversion();
  }
}
