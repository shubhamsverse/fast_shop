import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_button.dart';
import 'package:fast_shop/src/utils/widgets/Custom_input_field.dart';
import 'package:fast_shop/src/views/Shipping_pages/Shipping_address_pickup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AddnewAddressScreen extends StatelessWidget {
  const AddnewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(inttxt: "Add New Address", navstri: "/shipaddpick"),
      backgroundColor: kConrtPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: [
                    Text(
                      "First Name",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: SizeConfig(context).getProportionateScreenWidth(90),
                    ),
                    Text(
                      "Last Name",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: SizeConfig(context).getProportionateScreenWidth(180),
                      child: CustomInputField(
                        labelText: "Jones",
                        emptyValidation: false,
                        validation: (value) {
                          if (value == "") {
                            return "Enter Your First Name";
                          } else {
                            return null;
                          }
                        },
                        prefix: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: SizeConfig(context).getProportionateScreenWidth(180),
                      child: CustomInputField(
                        labelText: "Richards",
                        emptyValidation: false,
                        validation: (value) {
                          if (value == "") {
                            return "Enter Your Last Name";
                          } else {
                            return null;
                          }
                        },
                        prefix: false,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: const [
                    Text(
                      "Address",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomInputField(
                  labelText: "no18, parker road, allentown",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Enter Correct Address";
                    } else {
                      return null;
                    }
                  },
                  prefix: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    const Text(
                      "City",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: SizeConfig(context).getProportionateScreenWidth(140),
                    ),
                    const Text(
                      "Postal Code",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: SizeConfig(context).getProportionateScreenWidth(180),
                      child: CustomInputField(
                        labelText: "California",
                        emptyValidation: false,
                        validation: (value) {
                          if (value == "") {
                            return "Enter Your Country";
                          } else {
                            return null;
                          }
                        },
                        prefix: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: SizeConfig(context).getProportionateScreenWidth(180),
                      child: CustomInputField(
                        labelText: "876757",
                        emptyValidation: false,
                        validation: (value) {
                          if (value == "") {
                            return "Enter Correct pincode";
                          } else {
                            return null;
                          }
                        },
                        prefix: false,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: const [
                    Text(
                      "Country",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomInputField(
                  labelText: "USA",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Enter Your Last Name";
                    } else {
                      return null;
                    }
                  },
                  prefix: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  children: const [
                    Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomInputField(
                  labelText: "+4567-673537367",
                  emptyValidation: false,
                  validation: (value) {
                    if (value == "") {
                      return "Enter Your Last Name";
                    } else {
                      return null;
                    }
                  },
                  prefix: false,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: kConrtPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Custombutton(
                text: "Save & Continue",
                inputcolor: kPrimaryColor,
                customheight: 55,
                customwidth: 330,
                inputrad: 15,
                textStyle: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                press: () {
                  Get.to(() => ShippingAddressPickup());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
