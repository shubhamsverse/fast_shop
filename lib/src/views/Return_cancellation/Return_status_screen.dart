import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:fast_shop/src/utils/widgets/Custom_app_bar.dart';
import 'package:fast_shop/src/utils/widgets/Custom_status_conf.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:order_tracker/order_tracker.dart';

class ReturnStatusScreen extends StatefulWidget {
  const ReturnStatusScreen({super.key});

  @override
  State<ReturnStatusScreen> createState() => _ReturnStatusScreenState();
}

class _ReturnStatusScreenState extends State<ReturnStatusScreen> {
  int current_step = 0;
  List<Step> steps = [
    const Step(
      title: Text(
        'Ordered',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: SizedBox.shrink(),
      subtitle: Text(
        "Thu , 16 jun 2022",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      state: StepState.complete,
      isActive: true,
    ),
    const Step(
      title: Text(
        'Order Delivered',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: SizedBox.shrink(),
      subtitle: Text(
        "Your Item has been delivered",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      state: StepState.complete,
      isActive: true,
    ),
    const Step(
      title: Text(
        'Return',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: SizedBox.shrink(),
      subtitle: Text(
        "Wed , 22nd jun 2022",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      state: StepState.complete,
      isActive: true,
    ),
    const Step(
      title: Text(
        'Return approved',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: SizedBox.shrink(),
      subtitle: Text(
        "Wed , 22nd jun 2022",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      state: StepState.complete,
      isActive: true,
    ),
    const Step(
      title: Text(
        'Pickup',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: SizedBox.shrink(),
      subtitle: Text(
        "Expected by Wed 29th jun",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      state: StepState.indexed,
      isActive: true,
    ),
    const Step(
      title: Text(
        'Refund',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: SizedBox.shrink(),
      subtitle: Text(
        "Expected by Wed 29th jun",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
      ),
      state: StepState.indexed,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(inttxt: "Return Status", navstri: "/mret"),
        backgroundColor: kConrtPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Padding(
              padding:
                  const EdgeInsets.only(bottom: 10.0, left: 5.0, right: 5.0),
              child: Row(
                children: [
                  Image.asset(
                    bgbl,
                    height: 80,
                    width: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: SizedBox(
                      width: SizeConfig(context)
                          .getProportionateScreenWidth(227),
                      child: const Text(
                        "Nike Academy team Sports bag \n 90\$",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                width: SizeConfig(context).screenWidth,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.25),
                    borderRadius: BorderRadius.circular(15.0)),
              ),
            ),
            SizedBox(
              height: SizeConfig(context).getProportionateScreenHeight(20),
            ),
            Stepper(
              currentStep: this.current_step,
              steps: steps,
              type: StepperType.vertical,
              controlsBuilder: (context, controller) {
                return SizedBox(
                  width: SizeConfig(context).screenWidth,
                  height: SizeConfig(context).getProportionateScreenHeight(20),
                );
              },
              onStepTapped: (step) {
                setState(() {
                  current_step = step;
                });
              },
            ),
          ]),
        ));
  }
}
