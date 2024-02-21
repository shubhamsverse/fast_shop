import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/views/Main_pages/Cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class WishlistCard extends StatelessWidget {
  final String imgPath;
  final bool isFavorite;
  final String name;
  final String price;
  final String disprice;
  const WishlistCard({
    super.key,
    required this.imgPath,
    this.isFavorite = true,
    required this.name,
    required this.price,
    required this.disprice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(6, 6),
          ),
        ],
        color: kConrtPrimaryColor,
      ),
      height: SizeConfig(context).getProportionateScreenHeight(235),
      width: SizeConfig(context).getProportionateScreenWidth(150),
      child: Column(
        children: [
          Container(
            height: 120.0,
            width: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                scale: 0.7,
                image: AssetImage(
                  imgPath,
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      isFavorite
                          ? const Icon(Icons.favorite,
                              color: Color.fromARGB(255, 179, 6, 6))
                          : const Icon(Icons.favorite_border,
                              color: Color.fromARGB(255, 179, 6, 6)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 7.0),
          Text(name,
              style: const TextStyle(color: Colors.black87, fontSize: 15.0, fontWeight: FontWeight.w500)),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 3.0, bottom: 8.0),
            child: Row(
              children: [
                Text(
                  '\$${disprice}',
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '\$${price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    decoration: TextDecoration.lineThrough,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45, width: 0.5),
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: AssetImage(thrash),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => CartScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kPrimaryColor,
                  ),
                  height: 25,
                  width: 80,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          addcart,
                          scale: 2.0,
                          color: kConrtPrimaryColor,
                        ),
                      ),
                      const Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: kConrtPrimaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
