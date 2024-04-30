import 'package:flutter/material.dart';

import '../constant/constant.dart';

class SectionsTitle extends StatelessWidget {
  const SectionsTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
          Text(
            'See All',
            style: TextStyle(
                color: primaryColor, fontWeight: FontWeight.w400, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
