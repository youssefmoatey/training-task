import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:training_task/constant/constant.dart';
import 'package:training_task/widgets/custom_button.dart';
import 'package:training_task/widgets/custom_search_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 9,
            ),
            Image(
                width: MediaQuery.sizeOf(context).width / 1.2,
                image: const AssetImage('assets/images/login_image.png')),
            const SizedBox(
              height: 40,
            ),
            const CustomTextFormField(
              icon: 'assets/images/email.png',
              hintText: 'Your Email',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextFormField(
              icon: 'assets/images/Password.png',
              hintText: 'Password',
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(title: 'Sign in',),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account ?',
                  style: TextStyle(color: Color(0xFF9098B1)),
                ),
                Text(' Register',
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
