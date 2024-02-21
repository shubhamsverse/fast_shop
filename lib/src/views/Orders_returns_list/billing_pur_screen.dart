import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/views/Orders_returns_list/Order_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class BillingpurScreen extends StatelessWidget {
  const BillingpurScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConrtPrimaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              // height: SizeConfig(context).getProportionateScreenHeight(),
              width: SizeConfig(context).screenWidth,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
                color: kConrtPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(sucflpy),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Hey Fahim",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Text(
                    "Thanks for your purchase",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10.0, left: 15, top: 15),
                    child: Row(
                      children: const [
                        Text(
                          "Order #678901",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: kConrtPrimaryColor,
                    height: 250,
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const ListTile(
                          minVerticalPadding: 0.0,
                          leading: Text(
                            "Sub Total",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Text(
                            "208\$",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          visualDensity: VisualDensity(vertical: -4),
                        ),
                        const ListTile(
                          minVerticalPadding: 0.0,
                          leading: Text(
                            "Vat",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Text(
                            "0\$",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          visualDensity: VisualDensity(vertical: -4),
                        ),
                        const ListTile(
                          leading: Text(
                            "Shipping Charge",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Text(
                            "13\$",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          visualDensity: VisualDensity(vertical: -3),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SizedBox(
                            height: 1,
                            width: double.infinity,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                // color: Colors.black,
                                border: Border.all(
                                  color: Colors.black45,
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const ListTile(
                          leading: Text(
                            "Total",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Text(
                            "221\$",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          visualDensity: VisualDensity(vertical: -1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:10.0, top: 5.0, bottom: 0.0 ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Custombutton(
                                text: "Track Order",
                                inputcolor: kPrimaryColor,
                                customheight: 45,
                                customwidth: 130,
                                inputrad: 15,
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                                press: () {
                                  Get.to(() => OrderdetailsPage());
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custombutton(
                text: "Continue Shopping",
                inputcolor: kPrimaryColor,
                customheight: 55,
                customwidth: 280,
                inputrad: 15,
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                press: () {
                  Get.offAllNamed("/nav");
                },
              ),
          ),
        ],
      ),
    );
  }
}

