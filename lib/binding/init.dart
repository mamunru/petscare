import 'package:get/get.dart';
import 'package:petscare/controller/initController.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(InitController());
  }
}
