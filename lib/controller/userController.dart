import 'package:get/get.dart';
import 'package:petscare/route/routeName.dart';

class UserController extends GetxController {
  bool passwordVisible = true;

  void togglePasswordVisibility() {
    passwordVisible = !passwordVisible;
    update(); // Notify listeners to rebuild the UI
  }

  // try login with email and password
  Future<void> loginWithEmail(String email, String password) async {
    // Implement your login logic here
    // For example, call an API to authenticate the user
    print('Logging in with email: $email and password: $password');
    Get.offNamed(RouteName.loadingpage); // Navigate to home page after login
  }

  // try register with name,phone, email, password
  Future<void> registerWithEmail(
    String name,
    String phone,
    String email,
    String password,
  ) async {
    // Implement your registration logic here
    // For example, call an API to create a new user
    print('Registering with name: $name, phone: $phone, email: $email');
  }
}
