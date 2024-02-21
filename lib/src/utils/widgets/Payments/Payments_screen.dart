import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomPaymenttile extends StatefulWidget {
  final String inputtext;
  final String inputsubtext;
  final String radstr;
  final int radid;
  final String imgpth;
  final Function(String) onChanged;
  const CustomPaymenttile({
    super.key,
    required this.inputtext,
    required this.inputsubtext,
    required this.radstr,
    required this.radid,
    required this.onChanged, 
    required this.imgpth,
  });

  @override
  State<CustomPaymenttile> createState() => _CustomPaymenttileState();
}

class _CustomPaymenttileState extends State<CustomPaymenttile> {
  String radioButtonItem = 'Home Delivery';
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: const Border(
          bottom: BorderSide(
              color: Colors.black12, style: BorderStyle.solid, width: 0.25),
        ),
        trailing: Radio(
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
        horizontalTitleGap: 0.0,
        minVerticalPadding: 2.0,
        contentPadding: const EdgeInsets.only(left: 8.0),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(widget.imgpth),
        ),
        minLeadingWidth: 30,
        title: Text(
          widget.inputtext,
          // style:  const TextStyle(
          //   color: Colors.black,
          //   fontWeight: FontWeight.w300,
          // ),
        ),
        subtitle: Text(
          widget.inputsubtext,
        ),
      ),
    );
  }
}
