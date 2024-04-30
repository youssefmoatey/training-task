import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_search_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 9,
            ),
            Image(
                width: MediaQuery.sizeOf(context).width / 1.2,
                image: const AssetImage('assets/images/register_image.png')),
            const SizedBox(
              height: 40,
            ),
            const CustomTextFormField(
              icon: 'assets/images/user.png',
              hintText: 'Full Name',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextFormField(
              icon: 'assets/images/email.png',
              hintText: 'email',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextFormField(
              icon: 'assets/images/Password.png',
              hintText: 'Password',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextFormField(
              icon: 'assets/images/email.png',
              hintText: 'Phone',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(
              title: 'Sign Up',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'have a account ?',
                  style: TextStyle(color: Color(0xFF9098B1)),
                ),
                Text(' Sign in',
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w600)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
