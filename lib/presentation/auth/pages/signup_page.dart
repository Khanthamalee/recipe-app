import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';

import '../../../core/configs/theme/app_colors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, left: 16, right: 16),
        child: Column(
          children: [
            _signupText(context),
            _height(context, 30),
            _firstnameTextField(context),
            _height(context, 20),
            _lastnameTextField(context),
            _height(context, 20),
            _emailTextField(context),
            _height(context, 20),
            _passwordTextField(context),
            _height(context, 60),
            _singnUpButton(context),
          ],
        ),
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Text("Sign up", style: TextStyle(fontSize: 24));
  }

  Widget _firstnameTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "FirstName"),
    );
  }

  Widget _lastnameTextField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "LastName"),
    );
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

  Widget _singnUpButton(BuildContext context) {
    return ReactiveButton(
        onPressed: () async {},
        onSuccess: () {},
        onFailure: (error) {},
        title: "Sign In",
        activeColor: AppColors.forthdary,
        height: 50);
  }
}
