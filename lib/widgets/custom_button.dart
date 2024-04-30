import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:training_task/constant/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3), color: primaryColor),
      height: 40,
      width: double.infinity,
      child:  Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
