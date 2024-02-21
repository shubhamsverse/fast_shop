// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/utils/widgets/Custom_List_tile_FAQ.dart';

class CancellationFaqscreen extends StatelessWidget {
  const CancellationFaqscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cancellation FAQs",
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
            Get.toNamed("/cstcr");
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                CustomListtile(
                  inputtext: "Can I Cancel my order?",
                ),
                CustomListtile(
                  inputtext: "What are the steps to be followed to cancel my Order",
                ),
                CustomListtile(
                  inputtext: "How long will refund Take past cancellation?",
                ),
                CustomListtile(
                  inputtext: "Does Fast Shop assure of complete refund Against my cancelled order?",
                ),
                CustomListtile(
                  inputtext: "Help! The \"Cancel\" link is disabled.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}