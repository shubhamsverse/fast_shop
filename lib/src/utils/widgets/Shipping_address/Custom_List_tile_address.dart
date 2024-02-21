import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:flutter/material.dart';

class CustomListTileAddress extends StatefulWidget {
  final String inputtext;
  final String inputsubtext;
  final String radstr;
  final int radid;
  final Function(String) onChanged;
  const CustomListTileAddress({
    super.key,
    required this.inputtext,
    required this.inputsubtext,
    required this.radstr,
    required this.radid,
    required this.onChanged,
  });

  @override
  State<CustomListTileAddress> createState() => _CustomListTileAddressState();
}

class _CustomListTileAddressState extends State<CustomListTileAddress> {
  String radioButtonItem = 'Home Delivery';
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.location_on_outlined),
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
    );
  }
}
