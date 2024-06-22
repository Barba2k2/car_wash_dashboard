import 'dart:async';

import 'package:get/get.dart';

import '../../pages/auth/login/login_page.dart';

class SplashController extends GetxController {
  RxInt flag = 0.obs;
  customInit() {
    Timer(const Duration(seconds: 4), () {
      Get.offAll(
        const LoginPage(),
        transition: Transition.rightToLeftWithFade,
      );
    });
  }
}
