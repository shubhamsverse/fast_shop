import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/views/Orders_returns_list/My_returns_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ReviewScren extends StatelessWidget {
  const ReviewScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Review ",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
            onPressed: (() {
              Get.toNamed("/menu");
            }),
          ),
          backgroundColor: kConrtPrimaryColor,
          elevation: 0,
          toolbarHeight: 70,
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 12.0, left: 0.0, bottom: 15.0, top: 15.0),
              child: Container(
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage(notif2x)),
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
        backgroundColor: kConrtPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 10.0, left: 5.0, right: 5.0),
                child: Row(
                  children: [
                    Image.asset(
                      bgbl,
                      height: 80,
                      width: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                      child: SizedBox(
                        width: SizeConfig(context)
                            .getProportionateScreenWidth(240),
                        child: const Text(
                          "Nike Academy team Sports bag",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  width: SizeConfig(context).screenWidth,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 0.25),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
              ),
              SizedBox(
                height: SizeConfig(context).getProportionateScreenHeight(20),
              ),
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  size: 30,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: SizeConfig(context).screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kConrtPrimaryColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.image_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Upload a Photo",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kConrtPrimaryColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Love it!",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kConrtPrimaryColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Great product!",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kConrtPrimaryColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Awesome!",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 15.0, top: 15.0, bottom: 15.0, left: 8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kConrtPrimaryColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Orginal material!",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, right: 4.0, top: 15.0, bottom: 15.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: kConrtPrimaryColor,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Recommended",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
                child: Container(
                  width: SizeConfig(context).screenWidth,
                  height: SizeConfig(context).getProportionateScreenHeight(150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kConrtPrimaryColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Say what you think about the product!",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
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
                  text: "Send Feedback",
                  inputcolor: kPrimaryColor,
                  customheight: 55,
                  customwidth: 330,
                  inputrad: 15,
                  textStyle: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                  press: () {
                    Get.to(() => MyreturnsScreen());
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
