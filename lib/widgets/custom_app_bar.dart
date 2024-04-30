import 'package:flutter/material.dart';

import 'custom_search_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: CustomTextFormField(
          icon: 'assets/images/Search.png',
          hintText: 'Search Product',
        )),
        IconButton(
            onPressed: () {},
            icon: ClipOval(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color(0xFFF3F3F4),
                child: const Image(
                    image: AssetImage('assets/images/filter_icon.png')),
              ),
            )),
        IconButton(
            onPressed: () {},
            icon: const Image(
                image: AssetImage('assets/images/notification_icon.png'))),
      ],
    );
  }
}
