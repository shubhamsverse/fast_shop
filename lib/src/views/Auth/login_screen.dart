import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/controllers/login_screen_controller.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Custom_input_field.dart';
import 'package:fast_shop/src/views/Auth/registration_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return Scaffold(
              backgroundColor: kConrtPrimaryColor,
              body: Form(
                key: controller.loginformKey,
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
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 38,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomInputField(
                          labelText: "Email",
                          emptyValidation: false,
                          validation: (value) {
                            if (value == "" || !GetUtils.isEmail(value)) {
                              return "Email is not valid";
                            } else {
                              return null;
                            }
                          },
                          // errorText: "Please enter correct Email address",
                          iconData: directbox,
                          controller: controller.emailController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: CustomInputField(
                          labelText: "Password",
                          // errorText: "Enter correct password",
                          iconData: lock,
                          suffix: true,
                          controller: controller.passwordController,
                          suffixWidget: InkWell(
                            onTap: () {
                              controller.setSecureUnSecure();
                            },
                            child: const ImageIcon(AssetImage(boldeye)),
                          ),
                          isSecure: controller.isSecure,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: TextButton(
                              child: const Text("Forgot Password?"),
                              onPressed: () {
                                Get.toNamed("/forgot");
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Custombutton(
                          text: "Login",
                          inputcolor: kPrimaryColor,
                          customheight: 55,
                          customwidth: 280,
                          inputrad: 15,
                          textStyle: const TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                          press: () {
                            controller.signInWithEmailAndPassword();
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
                                    Get.offAll(
                                        () => const RegistrationScreen());
                                  }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
