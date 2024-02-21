// ignore_for_file: prefer_const_constructors

import 'package:fast_shop/src/config/Lists/Wishlist_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/utils/widgets/Custom_wishlist_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wishlist",
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
            Get.toNamed("/sdcd");
          }),
        ),
        backgroundColor: kConrtPrimaryColor,
        elevation: 0,
        toolbarHeight: 50,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal:8.0, vertical: 12.0),
            child: Text(
              "Delete",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: kConrtPrimaryColor,
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(
        children: <Widget>[
          // SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0, top: 10.0),
            width: MediaQuery.of(context).size.width - 10 ,
            height: MediaQuery.of(context).size.height - 100 ,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 50.0,
                childAspectRatio: 0.65,
              ),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return list[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
