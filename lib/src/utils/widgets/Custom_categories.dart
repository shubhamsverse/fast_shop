import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/views/Product_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomCategories extends StatelessWidget {
  final String inputtext;
  final String imgpt;
  final double ctrinputHeight;
  const CustomCategories({
    super.key,
    required this.inputtext,
    required this.imgpt,
    required this.ctrinputHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 5.0,
        bottom: 5.0,
      ),
      child: InkWell(
        onTap: (() {
          Get.to(() => ProductSearchScreen());
        }),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                horizontalTitleGap: 0.0,
                minVerticalPadding: 2.0,
                contentPadding: const EdgeInsets.only(left: 8.0),
                leading: Image.asset(
                  imgpt,
                  height: 50,
                  width: 50,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left:40.0),
                  child: Text(
                    inputtext,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                      color: Colors.black
                    ),
                  ),
                ),
                visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            )),
      ),
    );
  }
}
