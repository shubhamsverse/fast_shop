import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/controllers/forgot_password_controller.dart';
import 'package:fast_shop/src/controllers/login_screen_controller.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
        init: ForgotPasswordController(),
        builder: (controller) {
    return Scaffold(
      backgroundColor: kConrtPrimaryColor,
      body: SingleChildScrollView(
        child: Form(
          key: controller.forgotPasswordInput,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Image.asset(
                    logox,
                    width: 120,
                    height: 120,
                  ),
                  const Text(
                    "Fast Shop",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  const Text(
                    "Please type your email or phone number \n \nand we can help you reset password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
               const SizedBox(
                height: 30,
              ),
               Padding(
                padding: EdgeInsets.all(10.0),
                child: CustomInputField(
                  labelText: "Email or Phone number",
                  // errorText: "Enter correct password",
                  prefix: false,
                  controller: controller.forgot,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
                Center(
                child: Custombutton(
                  text: "Send OTP",
                  inputcolor: kPrimaryColor,
                  customheight: 60,
                  customwidth: 290,
                  inputrad: 15,
                  textStyle: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  press: ()
                  {
                    Get.toNamed("/otpauth");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
        }
    );
  }
}
