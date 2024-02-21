import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReferalScreen extends StatelessWidget {
  const ReferalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(inttxt: "Invite Friends & Earn", navstri: "/nav"),
      backgroundColor: kConrtPrimaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kConrtPrimaryColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset(
                    refer,
                    height: 150,
                    width: 150,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0, right: 10.0, bottom: 8.0),
                        child: Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 12.0),
                              child: Text(
                                "You Get",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "EXCITING REWARDS",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Text("For your Friends First Order",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:15.0),
                        child: SizedBox(
                          height: SizeConfig(context)
                              .getProportionateScreenHeight(100),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.25,
                                color: Colors.grey,
                              ),
                              // borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0, right: 8.0, bottom: 8.0),
                        child: Column(
                          children: const [
                            Padding(
                               padding: EdgeInsets.only(bottom: 12.0),
                              child: Text(
                                "Friends Get",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "EXCITING REWARDS",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "On Their Sign -up",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kConrtPrimaryColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
              height: SizeConfig(context).getProportionateScreenHeight(80),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(children: [
                  Text("Your Code",style: TextStyle(color: Colors.grey, fontSize: 18,fontWeight: FontWeight.w300),),
                  Padding(
                    padding: const EdgeInsets.only(left:60.0, right: 60.0),
                    child: Text("BAL4136", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                  Image.asset(copy,height: 30, width: 30,),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
