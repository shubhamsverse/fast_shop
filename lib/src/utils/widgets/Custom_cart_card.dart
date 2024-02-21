import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/views/Product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomCartCard extends StatelessWidget {
  final double ctrinputHeight;
  final String imgpth;
  final String ordpe;
  final String name;
  const CustomCartCard({
    super.key,
    required this.ctrinputHeight,
    required this.imgpth,
    required this.ordpe,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 7.0, bottom: 7.0),
      child: Container(
        height:
            SizeConfig(context).getProportionateScreenHeight(ctrinputHeight),
        width: SizeConfig(context).screenWidth,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(6, 6),
            ),
          ],
          color: kConrtPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            InkWell(
              onTap: (() {
                Get.to(() => ProductViewScreen());
              }),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    imgpth,
                    width: 80,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 4.0, left: 2.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 185,
                        child: Text(
                          name,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: kPrimaryColor,
                        radius: 10,
                        child: Image.asset(tickmark),
                      ),
                    ],
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Size: L",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      SizedBox(
                        width: 160,
                      )
                    ]),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 5.0),
                  child: Row(
                    children: [
                      Text(
                        ordpe,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      IconButton(
                        onPressed: (() {}),
                        icon: const Icon(
                          Icons.remove_outlined,
                          size: 16,
                        ),
                      ),
                      const Text(
                        "2",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      IconButton(
                        onPressed: (() {}),
                        icon: const Icon(
                          Icons.add_outlined,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
