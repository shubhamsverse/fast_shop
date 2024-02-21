import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListtile extends StatelessWidget {
  final String inputtext;
  final String navi;
  const CustomListtile({super.key, required this.inputtext, this.navi = "", });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:1.0, left: 8.0, bottom: 5.0, top: 5.0),
      child: InkWell(
        onTap: () {
          Get.toNamed(navi);
        },
        child: ListTile(
          shape: const Border(
            bottom: BorderSide(
              color: Colors.black12,
              style: BorderStyle.solid,
              width: 0.25
            ),
          ),
          trailing: const IconButton(
            padding: EdgeInsets.all(0.0),
            onPressed: null,
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
          horizontalTitleGap: 0.0,
          minVerticalPadding: 5.0,
          contentPadding: const EdgeInsets.only(left: 8.0),
          title: Text(
            inputtext,
            style: const TextStyle(
              fontSize: 19.5,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
