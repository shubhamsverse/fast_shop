import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/utils/widgets/Custom_List_tile_FAQ.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentFAQs extends StatelessWidget {
  const PaymentFAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment FAQs",
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
                inputtext: "Can I pay using using international currency?",
              ),
              CustomListtile(
                inputtext:
                    "What are the various modes of payment at Fast Shop?",
              ),
              CustomListtile(
                inputtext: "What does opting for \"Cash on Delivery\" mean? ",
              ),
              CustomListtile(
                inputtext:
                    "Will I have to pay for any hidden costs like sales tax, OCTROI, etc....?",
              ),
              CustomListtile(
                inputtext: "What does the convenience fee mean?",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
