import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';

class CustomOrdersContainer extends StatelessWidget {
  final String status;
  final String dateofev;
  final String typpay;
  final String imgpt;
  const CustomOrdersContainer({
    super.key,
    required this.status,
    required this.dateofev,
    required this.typpay, 
    required this.imgpt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: SizeConfig(context).screenWidth,
        decoration: BoxDecoration(
            color: kConrtPrimaryColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(6, 6),
              ),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Image.asset(imgpt),
          isThreeLine: false,
          title: Padding(
            padding: const EdgeInsets.only(left:15.0, bottom: 10.0, top: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      status,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:3.0),
                  child: Row(
                    children: [
                      Text(
                        dateofev,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      typpay,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          horizontalTitleGap: 0.0,
          minVerticalPadding: 5.0,
          trailing: const IconButton(
            padding: EdgeInsets.all(0.0),
            onPressed: null,
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }
}
