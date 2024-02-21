import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/views/Product_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCategoriesContainer extends StatelessWidget {
  final String inputtext;
  const CustomCategoriesContainer({super.key, required this.inputtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 8.0, top: 15.0, bottom: 10.0, left: 5.0),
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
        // width: SizeConfig(context).getProportionateScreenWidth(75),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 8.0, bottom: 8.0),
            child: Text(
              inputtext,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
