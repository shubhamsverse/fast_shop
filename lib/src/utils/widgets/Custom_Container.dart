import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomRecCont extends StatelessWidget {
  final String imgp;
  final String name;
  final String price;
  const CustomRecCont({super.key, required this.imgp, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      imgp,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: kConrtPrimaryColor),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Image.asset(
                            bgbl,
                            height: 20,
                            width: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Text(
                              "4.9",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 180,
            child: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),),
          ),
          Row(
            children: [
              Text(price, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),),
              SizedBox(
                width: SizeConfig(context).getProportionateScreenWidth(150),
              )
            ],
          )
        ],
      ),
    );
  }
}
