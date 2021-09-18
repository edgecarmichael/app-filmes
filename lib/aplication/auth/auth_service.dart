import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  User? user;

  void init() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      this.user = user;
      if (user == null) {
        await Future.delayed(Duration(seconds: 2));
        Get.offAllNamed('/login');
      } else {
        await Future.delayed(Duration(seconds: 2));
        Get.offAllNamed('/home');
      }
    });
  }
}
