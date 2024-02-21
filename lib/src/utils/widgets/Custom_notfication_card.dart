import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomNotificationCard extends StatelessWidget {
  final String imgp;
  final String inttxt;
  final String intime;
  const CustomNotificationCard({
    super.key,
    required this.imgp,
    required this.inttxt,
    required this.intime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(6, 6),
              ),
            ],
            color: kConrtPrimaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: kPrimaryColor,
                child: Image.asset(imgp,height: 40,color: kConrtPrimaryColor,),
                radius: 33,
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 4.0),
                child: Column(
                  children: [
                    Container(
                      width: SizeConfig(context).getProportionateScreenWidth(230),
                      child: Text(
                        inttxt,
                        style: const TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 150.0, right: 8.0),
                          child: Text(
                            intime,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
