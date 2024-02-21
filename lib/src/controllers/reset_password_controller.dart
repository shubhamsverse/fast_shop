import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final resetformKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  bool isSecure = true;
  setSecureUnSecure() {
    isSecure = !isSecure;
    update();
  }

  bool isSecurecon= true;
  setSecureUnSecurecon() {
    isSecurecon = !isSecurecon;
    update();
  }
}
