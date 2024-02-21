import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/controllers/registration_screen_controller.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Custom_input_field.dart';
import 'package:fast_shop/src/views/Auth/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistrationController>(
        init: RegistrationController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Form(
              key: controller.registrationformKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                          "Sign Up",
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
                    CustomInputField(
                      labelText: "Full name",
                      // errorText: "Please enter your name",
                      iconData: profileround,
                      controller: controller.nameController,
                    ),
                    CustomInputField(
                      labelText: "Email",
                      // errorText: "Enter correct email ID",
                      emptyValidation: false,
                      validation: (value) {
                        if (value == "" || !GetUtils.isEmail(value)) {
                          return "Email is not valid";
                        } else {
                          return null;
                        }
                      },
                      iconData: directbox,
                      controller: controller.emailController,
                    ),
                    CustomInputField(
                      labelText: "Phone number",
                      // errorText: "Enter only digits",
                      emptyValidation: false,
                      validation: (value) {
                        if (value == "" || !GetUtils.isPhoneNumber(value)) {
                          return "Phone number is not valid";
                        } else {
                          return null;
                        }
                      },
                      iconData: phone,
                      controller: controller.mobileController,
                    ),
                    CustomInputField(
                      labelText: "Password",
                      suffix: true,
                      emptyValidation: false,
                      validation: (value) {
                        if (value == "" || !mediumRegex.hasMatch(value)) {
                          return "Enter strong password";
                        } else {
                          return null;
                        }
                      },
                      iconData: lock,
                      controller: controller.passwordController,
                      suffixWidget: InkWell(
                        onTap: () {
                          controller.setSecureUnSecure();
                        },
                        child: const ImageIcon(AssetImage(boldeye)),
                      ),
                      isSecure: controller.isSecure,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Custombutton(
                        text: "Sign Up",
                        inputcolor: kPrimaryColor,
                        customheight: 55,
                        customwidth: 280,
                        inputrad: 15,
                        textStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                        press: () {
                          controller.signUpWithEmailAndPassword();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),

                    const SizedBox(
                      height: 40,
                    )
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
                  children: [
                    RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                        text: 'Already have an account?',
                        style: const TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Login',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                fontSize: 17.0,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  Get.offAll(() => const LoginScreen());
                                }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
