import 'package:fast_shop/src/config/Lists/Notification_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_notfication_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(inttxt: "Notifictation", navstri: "/nav"),
      backgroundColor: kConrtPrimaryColor,
      body: ListView(
        children: <Widget> [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left:20.0, bottom: 10.0),
                child: Text("Today", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(right: 0, left: 0, bottom: 10.0, top: 10.0),
            width: MediaQuery.of(context).size.width - 10 ,
            height: SizeConfig(context).getProportionateScreenHeight(todaynotiflist.length * 150 ),
            color: kConrtPrimaryColor,
              child: ListView.builder(
                itemCount: todaynotiflist.length,
                itemBuilder: ((context, index) {
                  return todaynotiflist[index];
                }),
              ),
            ),
           Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left:20.0, bottom: 10.0),
                child: Text("Yesterday", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              ),
            ],
          ),
           Container(
            padding: const EdgeInsets.only(right: 0, left: 0, bottom: 10.0, top: 10.0),
            width: MediaQuery.of(context).size.width - 10 ,
            height: MediaQuery.of(context).size.height - 100 ,
            color: kConrtPrimaryColor,
              child: ListView.builder(
                itemCount: yesnotiflist.length,
                itemBuilder: ((context, index) {
                  return yesnotiflist[index];
                }),
              ),
            ),
        ],
      ),
    );
  }
}