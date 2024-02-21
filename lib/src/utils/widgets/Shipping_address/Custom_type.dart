import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomContainer extends StatefulWidget {
  final double ctrinputHeight;
  final double ctrinputWidth;
  final Color bckgcolor;
  final Color brdcolor;
  final double bwidth;
  final bool bexist;
  final String inputtext;
  final double inputrad;
  final String radstr;
  final int radid;
  final Function(String) onChanged;
  const CustomContainer({
    super.key,
    required this.ctrinputHeight,
    required this.ctrinputWidth,
    this.bckgcolor = kConrtPrimaryColor,
    this.brdcolor = kConrtPrimaryColor,
    this.bwidth = 0.25,
    this.bexist = false,
    this.inputtext = "",
    this.inputrad = 10,
    required this.radstr,
    required this.radid,
    required this.onChanged ,
  });

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  String radioButtonItem = 'Home Delivery';
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig(context)
          .getProportionateScreenHeight(widget.ctrinputHeight),
      width:
          SizeConfig(context).getProportionateScreenWidth(widget.ctrinputWidth),
      // ignore: sort_child_properties_last
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio(
              visualDensity: const VisualDensity(horizontal: -4),
              value: 1,
              groupValue: id,
              activeColor: kPrimaryColor,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = widget.radstr;
                  id = widget.radid;
                  widget.onChanged(radioButtonItem);
                });
              },
            ),
            Text(
              widget.inputtext,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ]),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(5, 5),
          ),
        ],
        color: widget.bckgcolor,
        borderRadius: BorderRadius.circular(widget.inputrad),
        border: widget.bexist == true
            ? Border.all(
                color: widget.brdcolor,
                width: widget.bwidth,
                style: BorderStyle.solid)
            : null,
      ),
    );
  }
}
