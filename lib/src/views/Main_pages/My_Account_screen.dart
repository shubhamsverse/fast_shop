// ignore_for_file: prefer_const_constructors

import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/controllers/logout_controller.dart';
import 'package:fast_shop/src/utils/widgets/Custom_List_tile_FAQ.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LogoutController controller = LogoutController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Account",
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
            Get.toNamed("/calfq");
          }),
        ),
        backgroundColor: kConrtPrimaryColor,
        elevation: 0,
        toolbarHeight: 60,
      ),
      backgroundColor: kConrtPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                height: SizeConfig(context).getProportionateScreenHeight(70),
                width: SizeConfig(context).getProportionateScreenWidth(320),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(5, 5),
                    ),
                  ],
                  color: kConrtPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    // ignore: prefer_const_constructors
                    children:
                        // ignore: prefer_const_literals_to_create_immutables
                        [
                      ListTile(
                        leading: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: kPrimaryColor,
                            child: Text(
                              "JR",
                              style: TextStyle(
                                  color: kConrtPrimaryColor, fontSize: 30),
                            ),
                          ),
                        ),
                        minLeadingWidth: 30,
                        title: Text("Jones Richard"),
                        subtitle: Text("jones4321@gmail.com \n9876540321"),
                        contentPadding: EdgeInsets.all(0.0),
                        horizontalTitleGap: 0.0,
                        visualDensity: VisualDensity.standard,
                        minVerticalPadding: 2.0,
                        trailing: Padding(
                          padding: const EdgeInsets.only(right:10.0),
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 40,
              ),
              CustomListtile(
                inputtext: "Orders",
                navi: "/ord",
              ),
              CustomListtile(
                inputtext: "Customer Care", navi: '/cstcr',
              ),
              CustomListtile(
                inputtext: "Invite Friends & Earn ", navi: '/refe',
              ),
              CustomListtile(
                inputtext: "Notification", navi: '/noti',
              ),
              CustomListtile(
                inputtext: "Saved Cards", navi: '/sdcd',
              ),
              InkWell(
                onTap: () {
                  controller.logoutUser();
                },
                child: ListTile(
          shape: const Border(
            bottom: BorderSide(
              color: Colors.black12,
              style: BorderStyle.solid,
              width: 0.25
            ),
          ),
          trailing: const IconButton(
            padding: EdgeInsets.all(0.0),
            onPressed: null,
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
          horizontalTitleGap: 0.0,
          minVerticalPadding: 5.0,
          contentPadding: const EdgeInsets.only(left: 8.0),
          title: Text(
            "Logout",
            style: const TextStyle(
              fontSize: 19.5,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
