// ignore_for_file: file_names
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/views/Main_pages/Cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({super.key});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {
  var pages = ["a", "b", "c", "d"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: pages.length,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    TabBarView(
                      children: [
                        Image.asset(
                          bgbl,
                          height:
                              SizeConfig(context).getProportionateScreenHeight(
                            100,
                          ),
                        ),
                        Image.asset(
                          bgbl,
                          height:
                              SizeConfig(context).getProportionateScreenHeight(
                            100,
                          ),
                        ),
                        Image.asset(
                          bgbl,
                          height:
                              SizeConfig(context).getProportionateScreenHeight(
                            100,
                          ),
                        ),
                        Image.asset(
                          bgbl,
                          height:
                              SizeConfig(context).getProportionateScreenHeight(
                            100,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(10),
                                backgroundColor:
                                    Colors.white, // <-- Button color
                                foregroundColor:
                                    Colors.white, // <-- Splash color
                              ),
                              child: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig(context)
                                .getProportionateScreenHeight(190),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(10),
                                backgroundColor:
                                    Colors.white, // <-- Button color
                                foregroundColor:
                                    Colors.white, // <-- Splash color
                              ),
                              child: const Icon(Icons.favorite,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const TabPageSelector(
                selectedColor: kPrimaryColor,
                color: Colors.grey,
                borderStyle: BorderStyle.none,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Light washed shirt",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(bgbl)),
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 5,
                                      offset: Offset(5, 5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(bgbl)),
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 5,
                                      offset: Offset(5, 5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(bgbl)),
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 5,
                                      offset: Offset(5, 5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(bgbl)),
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 5,
                                      offset: Offset(5, 5),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              star,
                              height: 10,
                              width: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                "4.9",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                "(120)",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const Text(
                              "reviews",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(
                              width: 65,
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
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig(context)
                            .getProportionateScreenWidth(260),
                        child: const Text(
                          "Men Green raglan sleeved Tshirt",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 3.0),
                              child: Text(
                                "49.00\$",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "VAT included",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: const [
                            Text(
                              "Select Size",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: kConrtPrimaryColor,
                              child: Text("S"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: kConrtPrimaryColor,
                              child: Text("M"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: kPrimaryColor,
                              child: Text("L"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: kConrtPrimaryColor,
                              child: Text("XL"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: kConrtPrimaryColor,
                              child: Text("XXL"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          color: kConrtPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custombutton(
                  text: "Add to Cart",
                  inputcolor: kPrimaryColor,
                  customheight: 55,
                  customwidth: 330,
                  inputrad: 15,
                  textStyle: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  press: () {
                    Get.to(() => CartScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
