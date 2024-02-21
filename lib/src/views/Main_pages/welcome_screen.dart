import 'package:fast_shop/src/config/Lists/department_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Circular_profile_avatar.dart';
import 'package:fast_shop/src/utils/widgets/Search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WeclomeHomeScreen extends StatelessWidget {
  const WeclomeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kConrtPrimaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children:  [
                    Row(
                      children: const[
                        Text("Welcome, Jones!", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                        SizedBox(
                          width: 110,
                        )
                      ],
                    ),
                    Text("What are you looking for today!",style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w600),),
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0, left: 0.0, bottom: 15.0, top: 15.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        image: const DecorationImage(image: AssetImage(notif2x)),
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:16.0),
            child: Container(
              height: SizeConfig(context).getProportionateScreenHeight(62),
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(5, 5),
                    ),
                  ],
                  color: kConrtPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              child: MySearchField()),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Container(
              width: SizeConfig(context).screenWidth,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(offp)),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(6, 6),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                Text(
                  "Shop by department",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                right: 0, left: 0, bottom: 10.0, top: 10.0),
            // width: MediaQuery.of(context).size.width - 10,
            height: SizeConfig(context).getProportionateScreenHeight(120),
            color: kConrtPrimaryColor,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: deplist.length,
              itemBuilder: ((context, index) {
                return deplist[index];
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                Text(
                  "Recommended",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  right: 0, left: 0, bottom: 10.0, top: 10.0),
              // width: MediaQuery.of(context).size.width - 10,
              height: SizeConfig(context).getProportionateScreenHeight(250),
              color: kConrtPrimaryColor,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: reclist.length,
                itemBuilder: ((context, index) {
                  return reclist[index];
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
