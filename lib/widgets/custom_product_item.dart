import 'package:flutter/material.dart';

class CustomProductItem extends StatelessWidget {
  const CustomProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Stack(alignment: Alignment.bottomLeft, children: [
        Image(
          height: 90,
          fit: BoxFit.fill,
          image: AssetImage('assets/images/image_Product.png'),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'title',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ]),
    );
  }
}
