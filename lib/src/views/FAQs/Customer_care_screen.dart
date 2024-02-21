import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/utils/widgets/Custom_List_tile_FAQ.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomerCareScreen extends StatelessWidget {
  const CustomerCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Customer Care",
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
            Get.toNamed("/acfaq");
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
              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "FAQ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                CustomListtile(
                  inputtext: "Shipping FAQs",navi: "/shpfaq",
                ),
                CustomListtile(
                  inputtext: "Cancellation FAQs",navi: "/calfq",
                ),
                CustomListtile(
                  inputtext: "Payment FAQs",navi: "/payfaq",
                ),
                CustomListtile(
                  inputtext: "Return FAQs",navi: "/retfaq",
                ),
                CustomListtile(
                  inputtext: "Account & Shopping",navi: "/acfaq",
                ),
                CustomListtile(
                  inputtext: "Gift Cards",navi: "/gftfaq",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
