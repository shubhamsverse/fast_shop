import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAddressContainer extends StatefulWidget {
  final double ctrinputHeight;
  final double ctrinputWidth;
  final Color bckgcolor;
  final Color brdcolor;
  final String radstr;
  final int radid;
  final Function(String) onChanged;
  const CustomAddressContainer({
    super.key,
    required this.ctrinputHeight,
    required this.ctrinputWidth,
    this.bckgcolor = kConrtPrimaryColor,
    this.brdcolor = kConrtPrimaryColor,
    required this.radstr,
    required this.radid,
    required this.onChanged,
  });

  @override
  State<CustomAddressContainer> createState() => _CustomAddressContainerState();
}

class _CustomAddressContainerState extends State<CustomAddressContainer> {
  String radioButtonItem = 'Home Delivery';
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig(context)
          .getProportionateScreenHeight(widget.ctrinputHeight),
      width:
          SizeConfig(context).getProportionateScreenWidth(widget.ctrinputWidth),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(6, 6),
          ),
        ],
        color: kConrtPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.location_on_outlined),
            ),
            minLeadingWidth: 30,
            title: const Text("no18, parker road, allentown"),
            subtitle: const Text("Calefornia, west london"),
            contentPadding: const EdgeInsets.only(top:1.0, bottom: 0.0),
            horizontalTitleGap: 0.0,
            visualDensity: const VisualDensity(vertical: -4),
            minVerticalPadding: 2.0,
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Radio(
                visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
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
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
