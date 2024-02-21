import 'package:fast_shop/src/config/Lists/Cart_list.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        inttxt: "Cart(${cartlist.length})",
        navstri: '/nav',
      ),
      backgroundColor: kConrtPrimaryColor,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                right: 0, left: 0, bottom: 10.0, top: 0.0),
            width: MediaQuery.of(context).size.width - 10,
            height: SizeConfig(context).getProportionateScreenHeight(cartlist.length * 140 ),
            color: kConrtPrimaryColor,
            child: ListView.builder(
              itemCount: cartlist.length,
              itemBuilder: ((context, index) {
                return cartlist[index];
              }),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left:20.0, right: 20.0),
              child: Container(
                height: SizeConfig(context).getProportionateScreenHeight(40),
                width: SizeConfig(context).screenWidth,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0, top: 5.0),
                      child: const Text(
                        "Add a voucher",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    Image.asset(vouch, height: 30, width: 30,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet:Container(
        color: kConrtPrimaryColor,
        height: 240,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ListTile(
              minVerticalPadding: 0.0,
              leading: Text(
                "Sub Total",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "208\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -4),
            ),
            const ListTile(
              minVerticalPadding: 0.0,
              leading: Text(
                "Vat",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "0\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -4),
            ),
            const ListTile(
              leading: Text(
                "Shipping Charge",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "13\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 1,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    border: Border.all(
                      color: Colors.black45,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Text(
                "Total",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "221\$",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              visualDensity: VisualDensity(vertical: -1),
            ),
            const SizedBox(
              height: 5,
            ),
            Custombutton(
              text: "Continue",
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: const TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              press: () {
                Get.toNamed("/shpadd");
              },
            ),
          ],
        ),
      ),
    );
  }
}
