import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/views/Main_pages/Cart_screen.dart';
import 'package:fast_shop/src/views/Product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomSearchProductCard extends StatelessWidget {
  final bool isFavorite;
  final String price;
  final String imgp;
  final String inptxt;
  const CustomSearchProductCard({
    super.key,
    required this.isFavorite,
    required this.price,
    required this.imgp, 
    required this.inptxt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig(context).getProportionateScreenHeight(210),
      width: SizeConfig(context).getProportionateScreenWidth(170),
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
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                Get.to(() => ProductViewScreen());
              },
              child: Column(
                children: [
                  Image.asset(
                    imgp,
                    height: 120,
                    width: 120,
                  ),
                  Container(
                    child: Text(
                      inptxt,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: Align(
                alignment: FractionalOffset.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Image.asset(
                            star,
                            height: 10,
                            width: 10,
                          ),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: FractionalOffset.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 5.0),
                  child: isFavorite
                      ? const Icon(Icons.favorite,
                          color: Color.fromARGB(255, 179, 6, 6))
                      : const Icon(Icons.favorite_border,
                          color: Color.fromARGB(255, 179, 6, 6)),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: InkWell(
                  onDoubleTap: () {
                    Get.to(() => CartScreen());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                      color: kPrimaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        navcart,
                        height: 18,
                        width: 18,
                        color: kConrtPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
