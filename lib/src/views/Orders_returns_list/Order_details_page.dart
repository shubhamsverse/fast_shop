import 'package:fast_shop/src/config/Lists/order_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/views/Orders_returns_list/My_orders_screen.dart';
import 'package:fast_shop/src/views/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/widgets/Custom_button.dart';

class OrderdetailsPage extends StatelessWidget {
  const OrderdetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(inttxt: "Order details", navstri: "/nav"),
      backgroundColor: kConrtPrimaryColor,
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Thank you for shopping!",
                style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: SizeConfig(context).screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "Your order #87902 is expected to be ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "delivered on 12 june2019 we will notify ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "when your order is on its way",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16.0),
            child: Text(
              "Order #87902",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                right: 0, left: 0, bottom: 10.0, top: 0.0),
            width: MediaQuery.of(context).size.width - 10,
            height: MediaQuery.of(context).size.height - 150,
            color: kConrtPrimaryColor,
            child: ListView.builder(
              itemCount: orderlist.length,
              itemBuilder: ((context, index) {
                return orderlist[index];
              }),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: kConrtPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
                  Get.to(()=> const MyOrdersScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
