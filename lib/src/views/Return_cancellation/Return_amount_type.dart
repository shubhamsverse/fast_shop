import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/views/Return_cancellation/Return_sucess_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

enum Refundtype { Refund, Replacement }
class ReturnAmounttype extends StatefulWidget {
  const ReturnAmounttype({super.key});

  @override
  State<ReturnAmounttype> createState() => _ReturnAmounttypeState();
}

class _ReturnAmounttypeState extends State<ReturnAmounttype> {
  Refundtype? _character = Refundtype.Replacement;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(inttxt: "Return Status", navstri: "/nav"),
      backgroundColor: kConrtPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 10.0, left: 5.0, right: 5.0),
              child: Row(
                children: [
                  Image.asset(
                    bgbl,
                    height: 80,
                    width: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: SizedBox(
                      width:
                          SizeConfig(context).getProportionateScreenWidth(227),
                      child: const Text(
                        "Nike Academy team Sports bag \n 90\$",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                width: SizeConfig(context).screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.25),
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            SizedBox(
              height: SizeConfig(context).getProportionateScreenHeight(20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                children: [
                  Text(
                    "What do you want in return?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
           RadioListTile<Refundtype>(
          title: const Text('Refund'),
          value: Refundtype.Refund,
          activeColor: kPrimaryColor,
          groupValue: _character,
          onChanged: (Refundtype? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<Refundtype>(
          title: const Text('Replacement'),
          value: Refundtype.Replacement,
          groupValue: _character,
          activeColor: kPrimaryColor,
          onChanged: (Refundtype? value) {
            setState(() {
              _character = value;
            });
          },
        ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: kConrtPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Custombutton(
                text: "Continue",
                inputcolor: kPrimaryColor,
                customheight: 55,
                customwidth: 330,
                inputrad: 15,
                textStyle: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                press: () {
                  Get.to(() => const ReturnSucessScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
