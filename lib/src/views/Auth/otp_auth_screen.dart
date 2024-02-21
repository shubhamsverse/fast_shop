import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:pinput/pinput.dart';


class OTPAuthScreen extends StatefulWidget {
  const OTPAuthScreen({super.key});

  @override
  State<OTPAuthScreen> createState() => _OTPAuthScreenState();
}

class _OTPAuthScreenState extends State<OTPAuthScreen> {
  @override
  Widget build(BuildContext context) {
  String currentString = "";
    return Scaffold(
      backgroundColor: kConrtPrimaryColor,
      body: SingleChildScrollView(
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
              height: 30,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 25,
                ),
                const Text(
                  "OTP Authentication",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 25,
                ),
                const Text(
                  "Enter your 4 digit code sent to your\n \nnumber",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.5,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
             const SizedBox(
              height: 20,
            ),
            // Pinput(
            //   // listenForMultipleSmsOnAndroid: true,
            //   // androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
            //   // autofocus: true,
                  // length: 4,
                  // onChanged: (String pin) {
                    // currentString = pin;
                  // },
                // ),
            const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Didn\'t recive the code?"),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextButton(
                      child: const Text("resend code",style: TextStyle(color: kPrimaryColor, fontSize: 16),),
                      onPressed: () {
                        // Get.offAllNamed("/forgot");
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
                text: "Continue",
                inputcolor: kPrimaryColor,
                customheight: 60,
                customwidth: 290,
                inputrad: 15,
                textStyle: const TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
                press: ()
                {
                  Get.offAllNamed("/reset");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
