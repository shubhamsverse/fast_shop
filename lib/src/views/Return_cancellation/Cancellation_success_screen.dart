import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/views/Return_cancellation/Cancellation_status_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class RequestCancellationSucessScreen extends StatelessWidget {
  const RequestCancellationSucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        inttxt: "Request cancellation",
      navstri: "/mord",
      ),
      backgroundColor: kConrtPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(greencircle),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Cancellation Confirmed",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Custombutton(
                text: "Check Status",
                inputcolor: kPrimaryColor,
                customheight: 55,
                customwidth: 210,
                inputrad: 5,
                textStyle: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                press: () {
                  Get.to(() => CancellationStatusScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
