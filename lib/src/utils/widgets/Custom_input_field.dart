// ignore_for_file: prefer_const_declarations

import 'package:fast_shop/src/config/constants/Colors.dart';
import 'package:fast_shop/src/config/constants/Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatelessWidget {
  final String? errorText;
  final String? labelText;
  final TextEditingController? controller;
  final double height;
  final String iconData;
  final bool prefix;
  final bool suffix;
  final bool isSecure;
  final bool isDigitsOnly;
  final bool emptyValidation;
  final TextInputType textInput;
  final String iconsuffix;
  Widget? suffixWidget;
  // ignore: prefer_typing_uninitialized_variables
  var validation;

  CustomInputField({
    Key? key,
    this.errorText,
    this.isSecure = false,
    this.isDigitsOnly = false,
    this.suffixWidget,
    this.labelText,
    this.controller,
    this.height = 60,
    this.validation,
    this.textInput = TextInputType.text,
    this.emptyValidation = true,
    this.iconData = profileround,
    this.iconsuffix = boldeye,
    this.prefix = true,
    this.suffix = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorStyle = const TextStyle(
      fontSize: 14,
    );

    return LayoutBuilder(builder: (context, constraints) {
      final textPainter = TextPainter()
        ..text = TextSpan(text: errorText, style: errorStyle)
        ..textDirection = TextDirection.ltr
        ..layout(maxWidth: constraints.maxWidth);

      final heightErrorMessage = textPainter.size.height + 8;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Stack(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
            ),
            SizedBox(
              height: errorText != null ? height + heightErrorMessage : height,
              child: TextFormField(
                keyboardType: textInput,
                inputFormatters: isDigitsOnly
                    ? [
                        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                        TextInputFormatter.withFunction((oldValue, newValue) {
                          try {
                            final text = newValue.text;
                            if (text.isNotEmpty) double.parse(text);
                            return newValue;
                          } catch (e) {
                            e.toString();
                          }
                          return oldValue;
                        }),
                      ]
                    : null,
                obscureText: isSecure,
                decoration: InputDecoration(
                    prefixIcon: prefix == true
                        ? Image.asset(
                            iconData,
                            scale: 1.1,
                          )
                        : null,
                    suffixIcon: suffix == true ? suffixWidget : null,
                    fillColor: kConrtPrimaryColor,
                    filled: true,
                    errorStyle: errorStyle,
                    errorText: errorText,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        borderSide: BorderSide.none),
                    labelText: labelText,
                    labelStyle: const TextStyle(fontSize: 18)),
                validator: emptyValidation
                    ? (value) {
                        if (value == null || value.isEmpty) {
                          return '$labelText Required';
                        }
                        return null;
                      }
                    : validation,
                controller: controller,
              ),
            ),
          ],
        ),
      );
    });
  }
}
