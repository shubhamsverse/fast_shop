import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/utils/widgets/Custom_List_tile_FAQ.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class GiftCardFAQs extends StatelessWidget {
  const GiftCardFAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Gift card FAQs",
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
            Get.toNamed("/pynt");
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
                inputtext: "How can I purchase Fast Shop Gift Card?",
              ),
              CustomListtile(
                inputtext:
                    "I just received a purchase a Fast Shop Gift Card. How Do I use it?",
              ),
              CustomListtile(
                inputtext:
                    "How Do I check the available balance or expiry date on my card?",
              ),
              CustomListtile(
                inputtext: "Does fast shop gift cards expiry?",
              ),
              CustomListtile(
                inputtext: "Who is the issuer of Gift Card?",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
