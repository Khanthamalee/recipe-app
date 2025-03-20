import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';
import 'package:recipeapp/common/helper/navigation/app_navigation.dart';
import 'package:recipeapp/presentation/auth/pages/signup_page.dart';

import '../../../core/configs/theme/app_colors.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, left: 16, right: 16),
        child: Column(
          children: [
            _signinText(context),
            _height(context, 30),
            _emailTextField(context),
            _height(context, 20),
            _passwordTextField(context),
            _height(context, 60),
            _singnInButton(context),
            _height(context, 20),
            _signUpText(context)
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return Text("Sign in", style: TextStyle(fontSize: 24));
  }

  Widget _emailTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Email"),
    );
  }

  Widget _passwordTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Password"),
    );
  }

  Widget _height(BuildContext context, double height) {
    return SizedBox(height: height);
  }

  Widget _singnInButton(BuildContext context) {
    return ReactiveButton(
        onPressed: () async {},
        onSuccess: () {},
        onFailure: (error) {},
        title: "Sign In",
        activeColor: AppColors.forthdary,
        height: 50);
  }

  Widget _signUpText(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(text: "Don't you have any account?  "),
        TextSpan(
            text: "Sign up",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigation.push(context, SignupPage());
              },
            style: TextStyle(color: Colors.blue))
      ]),
    );
  }
}
