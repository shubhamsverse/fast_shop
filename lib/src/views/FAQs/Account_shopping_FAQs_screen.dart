import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/utils/widgets/Custom_List_tile_FAQ.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountShoppingFaqScreen extends StatelessWidget {
  const AccountShoppingFaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account Shopping FAQs",
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
            Get.toNamed("/gftfaq");
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
                inputtext: "I am unable to Login",
              ),
              CustomListtile(
                inputtext: "Is my personnel information Secure? How can I edit my personal Info?",
              ),
              CustomListtile(
                inputtext: "Does the returns policy change for any Fast Shop promotions?",
              ),
              CustomListtile(
                inputtext: "The size I want is Not Available",
              ),
              CustomListtile(
                inputtext: "How do I apply a coupon",
              ),
            ],
          ),
        ),
      ),
    );
  }
}