import 'package:dotted_border/dotted_border.dart';
import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Payments/Payments_screen.dart';
import 'package:fast_shop/src/views/Orders_returns_list/billing_pur_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

enum paytype{ mast, applp, ppal, visa, ame }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
   paytype? _character = paytype.ppal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payments",
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
            Get.toNamed("/payfaq");
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 0,
            ),
            Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: const Border(
          bottom: BorderSide(
              color: Colors.black12, style: BorderStyle.solid, width: 0.25),
        ),
        trailing: Radio(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          value: paytype.mast,
          groupValue: _character,
          activeColor: kPrimaryColor,
          onChanged: (val) {
            setState(() {
              _character = val;
            });
          },
        ),
        horizontalTitleGap: 0.0,
        minVerticalPadding: 2.0,
        contentPadding: const EdgeInsets.only(left: 8.0),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(mastercrd),
        ),
        minLeadingWidth: 30,
        title: Text(
          "Master card"
        ),
        subtitle: Text(
          "…. …. 4567 8790"
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: const Border(
          bottom: BorderSide(
              color: Colors.black12, style: BorderStyle.solid, width: 0.25),
        ),
        trailing: Radio(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          value: paytype.applp,
          groupValue: _character,
          activeColor: kPrimaryColor,
          onChanged: (val) {
            setState(() {
              _character = val;
            });
          },
        ),
        horizontalTitleGap: 0.0,
        minVerticalPadding: 2.0,
        contentPadding: const EdgeInsets.only(left: 8.0),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(applpay),
        ),
        minLeadingWidth: 30,
        title: Text(
         "Apple pay"
        ),
        subtitle: Text(
         applpay
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: const Border(
          bottom: BorderSide(
              color: Colors.black12, style: BorderStyle.solid, width: 0.25),
        ),
        trailing: Radio(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          value: paytype.ppal,
          groupValue: _character,
          activeColor: kPrimaryColor,
          onChanged: (val) {
            setState(() {
              _character = val;
            });
          },
        ),
        horizontalTitleGap: 0.0,
        minVerticalPadding: 2.0,
        contentPadding: const EdgeInsets.only(left: 8.0),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(paypal),
        ),
        minLeadingWidth: 30,
        title: Text(
          "Pay Pal"
        ),
        subtitle: Text(
          ""
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: const Border(
          bottom: BorderSide(
              color: Colors.black12, style: BorderStyle.solid, width: 0.25),
        ),
        trailing: Radio(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          value: paytype.ame,
          groupValue: _character,
          activeColor: kPrimaryColor,
          onChanged: (val) {
            setState(() {
              _character = val;
            });
          },
        ),
        horizontalTitleGap: 0.0,
        minVerticalPadding: 2.0,
        contentPadding: const EdgeInsets.only(left: 8.0),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(americanexp),
        ),
        minLeadingWidth: 30,
        title: Text(
          "American Express"
        ),
        subtitle: Text(
          ""
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: const Border(
          bottom: BorderSide(
              color: Colors.black12, style: BorderStyle.solid, width: 0.25),
        ),
        trailing: Radio(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          value: paytype.visa,
          groupValue: _character,
          activeColor: kPrimaryColor,
          onChanged: (val) {
            setState(() {
              _character = val;
            });
          },
        ),
        horizontalTitleGap: 0.0,
        minVerticalPadding: 2.0,
        contentPadding: const EdgeInsets.only(left: 8.0),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(visa),
        ),
        minLeadingWidth: 30,
        title: Text(
          "Visa"
        ),
        subtitle: Text(
          ""
        ),
      ),
    ),
             InkWell(
              onTap: () {},
              child: DottedBorder(
                dashPattern: [3],
                strokeWidth: 2,
                color: Colors.black38,
                radius: Radius.circular(30),
                child: Container(
                  height: SizeConfig(context).getProportionateScreenHeight(50),
                  width: SizeConfig(context).getProportionateScreenWidth(310),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(5, 5),
                      ),
                    ],
                    color: kConrtPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "+",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Add New Address",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 100,)
          ],
        ),
      ),
     bottomSheet: Container(
        color: kConrtPrimaryColor,
        height: 250,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const ListTile(
              minVerticalPadding: 0.0,
              leading: Text(
                "Sub Total",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "208\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -4),
            ),
            const ListTile(
              minVerticalPadding: 0.0,
              leading: Text(
                "Vat",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "0\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -4),
            ),
            const ListTile(
              leading: Text(
                "Shipping Charge",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "13\$",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              visualDensity: VisualDensity(vertical: -3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 1,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    border: Border.all(
                      color: Colors.black45,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Text(
                "Total",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Text(
                "221\$",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              visualDensity: VisualDensity(vertical: -1),
            ),
            const SizedBox(
              height: 5,
            ),
            Custombutton(
              text: "Continue",
              inputcolor: kPrimaryColor,
              customheight: 55,
              customwidth: 280,
              inputrad: 15,
              textStyle: const TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              press: () {
                Get.to(() => BillingpurScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
