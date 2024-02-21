import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogboxWidget extends StatelessWidget {
  const DialogboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: kConrtPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      elevation: 16,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Image.asset(twofactorauth),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                  "Congratulations",
                  style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "You Password has been",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Updated!",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Custombutton(
                  text: "Login",
                  inputcolor: kPrimaryColor,
                  customheight: 55,
                  customwidth: 200,
                  inputrad: 25,
                  // ignore: prefer_const_constructors
                  textStyle: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  press: () {
                    Get.offAllNamed("/login");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
