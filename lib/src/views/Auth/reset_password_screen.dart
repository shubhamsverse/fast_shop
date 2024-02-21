import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/controllers/reset_password_controller.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Custom_input_field.dart';
import 'package:fast_shop/src/utils/widgets/Dialogbox_widget.dart';
import 'package:fast_shop/src/views/Auth/registration_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPasswordController>(
      init: ResetPasswordController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: kConrtPrimaryColor,
          body: Form(
            key: controller.resetformKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
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
                    height: 10,
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
                          fontSize: 38,
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
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomInputField(
                      labelText: "New Password",
                      // errorText: "Enter secured Password",
                      iconData: lock,
                      suffix: true,
                      suffixWidget: InkWell(
                        onTap: () {
                          controller.setSecureUnSecure();
                        },
                        child: const ImageIcon(AssetImage(boldeye)),
                      ),
                      isSecure: controller.isSecure,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: CustomInputField(
                      labelText: "Confirm Password",
                      // errorText: "Password and new Password should match",
                      suffixWidget: InkWell(
                        onTap: () {
                          controller.setSecureUnSecurecon();
                        },
                        child: const ImageIcon(AssetImage(boldeye)),
                      ),
                      isSecure: controller.isSecurecon,
                      iconData: lock,
                      suffix: true,
                      emptyValidation: false,
                      validation: (value) {
                        if (value == "" ||
                            !mediumRegex.hasMatch(value) ||
                            value != controller.passwordController) {
                          return "Confirm password should match new password";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Custombutton(
                      text: "Reset Password",
                      inputcolor: kPrimaryColor,
                      customheight: 55,
                      customwidth: 280,
                      inputrad: 15,
                      textStyle: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      press: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const DialogboxWidget();
                            });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: Container(
            color: kConrtPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    // ignore: prefer_const_constructors
                    text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign Up',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                              fontSize: 17.0,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                Get.offAll(() => const RegistrationScreen());
                              }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
