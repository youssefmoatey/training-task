import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:training_task/widgets/custom_product_item.dart';
import 'package:training_task/widgets/product_details.dart';

import '../constant/constant.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/sections_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 20,
                ),
                const Stack(
                  alignment: Alignment.topLeft,
                  // alignment: Alignment.topLeft,
                  children: [
                    Image(
                      image: AssetImage('assets/images/Promotion_Image.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        'Super Flash Sale\n 40% off',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                // Categories Section
                const SectionsTitle(
                  title: 'Categories',
                ),

                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CustomProductItem(),
                      CustomProductItem(),
                      CustomProductItem(),
                      CustomProductItem(),
                    ],
                  ),
                ),
                const SectionsTitle(title: 'Most popular For Man'),
                const ListViewToProductsDisplay(),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        'About Us',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Container(
                  // alignment: Alignment.centerLeft,
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/image_about_us.png'),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Who We are?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const Text(
                          maxLines: 3,
                          'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, sed do eiusmod tempor...',
                          style: TextStyle(color: Color(0xFFFFFFFF)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Read more',
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SectionsTitle(title: 'Most popular For Woman'),
                const ListViewToProductsDisplay(),
                const SectionsTitle(title: 'Most popular For Man'),
                const ListViewToProductsDisplay(),
                const SectionsTitle(title: 'Hot Details'),
                SizedBox(
                  height: 1000,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: (1 / 1.7), crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return const ProductDetailsWidget();
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewToProductsDisplay extends StatelessWidget {
  const ListViewToProductsDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          ProductDetailsWidget(),
          ProductDetailsWidget(),
          ProductDetailsWidget(),
          ProductDetailsWidget(),
          ProductDetailsWidget(),
          ProductDetailsWidget(),
        ],
      ),
    );
  }
}
