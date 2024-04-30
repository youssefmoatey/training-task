import 'package:flutter/material.dart';

import '../constant/constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.icon, required this.hintText});
  final String icon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          height: 1,
        ),
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: primaryColor)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: primaryColor)),
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
          prefixIcon:
               Image(image: AssetImage('$icon')),
          prefixIconColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
            // fontSize: 12,
            fontFamily: 'JetBrains Mono',
            fontWeight: FontWeight.w500,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
