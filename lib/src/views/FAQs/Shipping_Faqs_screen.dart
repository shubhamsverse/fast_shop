import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/utils/widgets/Custom_List_tile_FAQ.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ShippingFAQ extends StatelessWidget {
  const ShippingFAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shipping FAQs",
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
              Get.toNamed("/shpaddpick");
            }),
          ),
          backgroundColor: kConrtPrimaryColor,
          elevation: 0,
          toolbarHeight: 60,
        ),
        backgroundColor: kConrtPrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: const [
              CustomListtile(
                inputtext: "How long will the delivery take?",
              ),
              CustomListtile(
                inputtext: "How can I track my order?",
              ),
              CustomListtile(
                inputtext: "Will All the products be shipped out together?",
              ),
              CustomListtile(
                inputtext: "How much will the shipping cost me?",
              ),
              CustomListtile(
                inputtext: "What should I do If I miss my delivery?",
              ),
              CustomListtile(
                inputtext: "Can I change my delivery address?",
              ),
              CustomListtile(
                inputtext: "Are your products genuine?",
              ),
              CustomListtile(
                inputtext: "The package I received is damaged?",
              ),
              CustomListtile(
                inputtext: "Do You delivery everywhere in India?",
              ),
              CustomListtile(
                inputtext: "Do You deliver internationaly?",
              ),
            ],
          ),
        ));
  }
}
