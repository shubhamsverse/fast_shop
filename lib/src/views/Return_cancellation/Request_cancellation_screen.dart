import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/views/Return_cancellation/Cancellation_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

enum RequestCanc {
  Expected_delivery_time_is_very_Long,
  I_want_to_change_my_phone_number,
  Pricefortheproducthasdecreased,
  Iwanttochangetheaddressfororder,
  Iwanttoconvertmyordertoprepaid,
  NeeddifferentSizeorcolor,
  Ihavechangedmymind

}

class Returncancellationscreen extends StatefulWidget {
  const Returncancellationscreen({super.key});

  @override
  State<Returncancellationscreen> createState() =>
      _ReturncancellationscreenState();
}

class _ReturncancellationscreenState extends State<Returncancellationscreen> {
  RequestCanc? _character = RequestCanc.Expected_delivery_time_is_very_Long;
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
                    "Reason for Cancellation",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            RadioListTile<RequestCanc>(
              title: const Text('Expected delivery time is very Long'),
              value: RequestCanc.Expected_delivery_time_is_very_Long,
              activeColor: kPrimaryColor,
              groupValue: _character,
              onChanged: (RequestCanc? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<RequestCanc>(
              title: const Text('I want to change my phone number'),
              value: RequestCanc.I_want_to_change_my_phone_number,
              groupValue: _character,
              activeColor: kPrimaryColor,
              onChanged: (RequestCanc? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<RequestCanc>(
              title: const Text('Price for the product has decreased'),
              value: RequestCanc.Pricefortheproducthasdecreased,
              activeColor: kPrimaryColor,
              groupValue: _character,
              onChanged: (RequestCanc? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<RequestCanc>(
              title: const Text('I want to change the address for order'),
              value: RequestCanc.Iwanttochangetheaddressfororder,
              groupValue: _character,
              activeColor: kPrimaryColor,
              onChanged: (RequestCanc? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<RequestCanc>(
              title: const Text('I want to convert my order to prepaid'),
              value: RequestCanc.Iwanttoconvertmyordertoprepaid,
              activeColor: kPrimaryColor,
              groupValue: _character,
              onChanged: (RequestCanc? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<RequestCanc>(
              title: const Text('Need different Size or color'),
              value: RequestCanc.NeeddifferentSizeorcolor,
              groupValue: _character,
              activeColor: kPrimaryColor,
              onChanged: (RequestCanc? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<RequestCanc>(
              title: const Text('I have changed my mind'),
              value: RequestCanc.Ihavechangedmymind,
              groupValue: _character,
              activeColor: kPrimaryColor,
              onChanged: (RequestCanc? value) {
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
                text: "Submit Request",
                inputcolor: kPrimaryColor,
                customheight: 55,
                customwidth: 330,
                inputrad: 15,
                textStyle: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                press: () {
                  Get.to(() => const RequestCancellationSucessScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
