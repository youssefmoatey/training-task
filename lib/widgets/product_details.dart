import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constant/constant.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: MediaQuery.sizeOf(context).height / 3,
        width: MediaQuery.sizeOf(context).width / 2.5,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFEBF0FF), width: 1.3),
            borderRadius: BorderRadius.circular(7)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: const DecorationImage(
                  // fit: BoxFit.fill,
                  image: AssetImage('assets/images/image_Product1.png'),
                ),
              ),
            ),
            const Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              'FS - Nike Air max 270 React',
              style: TextStyle(
                  color: Color(0xFF223263), fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '\$299.43',
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$534.33',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Color(0xFF9098B1)),
                ),
                Text(
                  '24%',
                  style: TextStyle(
                      color: Color(0xFFFB7181), fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
