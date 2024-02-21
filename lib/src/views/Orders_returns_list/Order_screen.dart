import 'package:fast_shop/src/config/Lists/Orders_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_orders_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ordersscreen extends StatelessWidget {
  final String ordid;
  const Ordersscreen({
    super.key,
    required this.ordid,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        inttxt: "Orders",
        navstri: "/blp",
      ),
      backgroundColor: kConrtPrimaryColor,
      body:  ListView(
          children: <Widget> [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Text(
                    "Last 6 months",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 10.0,
                    left: 20.0,
                  ),
                  child: Text(
                    "Order ID: $ordid",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Container(
            // padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 10.0, top: 10.0),
            width: MediaQuery.of(context).size.width - 10 ,
            height: MediaQuery.of(context).size.height - 100 ,
            color: kConrtPrimaryColor,
              child: ListView.builder(
                itemCount: orderlist.length,
                itemBuilder: ((context, index) {
                  return orderlist[index];
                }),
              ),
            ),
            // const CustomOrdersContainer(
            //     status: "Cancelled",
            //     dateofev: "Cancelled on 13 Dec",
            //     typpay: "Cash on Delivery"),
            // const CustomOrdersContainer(
            //     status: "Cancelled",
            //     dateofev: "Cancelled on 13 Dec",
            //     typpay: "Cash on Delivery"),
            // const CustomOrdersContainer(
            //     status: "Cancelled",
            //     dateofev: "Cancelled on 13 Dec",
            //     typpay: "Cash on Delivery"),
          ],
      ),
    );
  }
}
