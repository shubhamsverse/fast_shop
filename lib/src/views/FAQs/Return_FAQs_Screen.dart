import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/utils/widgets/Custom_List_tile_FAQ.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ReturnFAQ extends StatelessWidget {
  const ReturnFAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Return FAQs",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
            onPressed: (() {
              Get.toNamed("/menu");
            }),
          ),
          backgroundColor: kConrtPrimaryColor,
          elevation: 0,
          toolbarHeight: 60,
        ),
        backgroundColor: kConrtPrimaryColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: const [
                CustomListtile(
                  inputtext: "How do I return my product?",
                ),
                CustomListtile(
                  inputtext:
                      "Can I return the return the peoduct to the delivery person if I did not like it?",
                ),
                CustomListtile(
                  inputtext:
                      "Does the returns policy change for any Fast Shop promotions\? ",
                ),
                CustomListtile(
                  inputtext:
                      "How to get refund for cash on delivery in the bank account?",
                ),
                CustomListtile(
                  inputtext: "Do I have to return the whole Order?",
                ),
                CustomListtile(
                  inputtext: "Why my return put on held?",
                ),
                CustomListtile(
                  inputtext: "When will the return order be picked up?",
                ),
              ],
            ),
          ),
        ));
  }
}
