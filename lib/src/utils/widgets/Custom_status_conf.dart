import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:fast_shop/src/config/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomStatusConf extends StatefulWidget {
  
  final Color inptcol;
  final Widget widge;
  final bool opt;
  const CustomStatusConf({super.key, required this.inptcol, required this.widge, required this.opt});

  @override
  State<CustomStatusConf> createState() => _CustomStatusConfState();
}

class _CustomStatusConfState extends State<CustomStatusConf> {
  int current_step = 0;
  List<Step> steps =  [
  Step(
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
  Step(
    title: Text(
      'Cancelled',
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
  
];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: kPrimaryColor),
    child: Stepper(
      currentStep: this.current_step,
      steps: steps,
      type: StepperType.vertical,
      controlsBuilder: (context, controller) {
      return SizedBox(width: SizeConfig(context).screenWidth, height: SizeConfig(context).getProportionateScreenHeight(20),);
    },
      onStepTapped: (step) {
        setState(() {
          current_step = step;
        });
      },
    ),
      );
  }
}
