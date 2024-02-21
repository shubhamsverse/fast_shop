import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/views/Payment_other_screens/Review_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Custommyordercontainer extends StatelessWidget {
  final double ctrinputHeight;
  final String imgpth;
  final String orderid;
  final String name;
  final String ordpe;
  final String status;
  final String dod;
  final String typser;
  final String bttxt;
  final String nxtsvr;
  final bool opt;
  final String ntst;
  const Custommyordercontainer({
    super.key,
    required this.ctrinputHeight,
    required this.imgpth,
    required this.orderid,
    required this.name,
    required this.ordpe,
    required this.status,
    required this.dod,
    this.typser = "Estimate Delivery",
    this.bttxt = "Track order",
    this.nxtsvr = "Cancel",
    this.opt = false, 
    this.ntst = "/reqcan",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
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
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  imgpth,
                  width: 70,
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 5.0),
                  child: Row(
                    children: [
                      Text(
                        "Order Id:\#$orderid",
                        style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Text(
                        status,
                        style: opt == false
                            ? const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)
                            : const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 5.0),
                  child: Row(
                    children: [
                      Text(
                        typser,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                       opt == false?
                      const SizedBox(
                        width: 65,
                      ): SizedBox(
                        width: 75,
                      ),
                      Text(
                        dod,
                        style: opt == false
                            ? const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)
                            : const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 170,
                        child: Text(
                          name,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 38,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(ntst);
                        },
                        child: Text(
                          nxtsvr,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 5.0),
                  child: Row(
                    children: [
                      Text(
                        ordpe,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      opt == false ?
                      const SizedBox(
                        width: 135,
                      ) : const SizedBox(
                        width: 120,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => ReviewScren());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kPrimaryColor,
                          ),
                          // height: 35,
                          // width: 85,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${bttxt}",
                                  style: const TextStyle(
                                    color: kConrtPrimaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
