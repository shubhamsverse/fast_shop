import 'package:fast_shop/src/config/Lists/My_order_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Custom_myorder_container.dart';
import 'package:fast_shop/src/views/Orders_returns_list/My_returns_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(inttxt: "My Orders",navstri: "/mret",),
      backgroundColor: kConrtPrimaryColor,
      body: ListView(
        children: <Widget> [
          Container(
            padding: const EdgeInsets.only(right: 0.0, left: 0.0, bottom: 8.0, top: 8.0),
            width: MediaQuery.of(context).size.width - 10 ,
            height: MediaQuery.of(context).size.height - 100 ,
            color: kConrtPrimaryColor,
              child: ListView.builder(
                itemCount: myorderlist.length,
                itemBuilder: ((context, index) {
                  return myorderlist[index];
                }),
              ),
            ),
        ],
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: kConrtPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Custombutton(
                    text: "Continue Shopping",
                    inputcolor: kPrimaryColor,
                    customheight: 55,
                    customwidth: 280,
                    inputrad: 15,
                    textStyle: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                    press: () {
                      Get.to(() => const MyreturnsScreen());
                    },
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
