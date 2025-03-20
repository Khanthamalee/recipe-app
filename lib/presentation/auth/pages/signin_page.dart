import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';
import 'package:recipeapp/common/helper/message/display_message.dart';
import 'package:recipeapp/common/helper/navigation/app_navigation.dart';
import 'package:recipeapp/data/auth/models/signin_model.dart';
import 'package:recipeapp/domain/usecase/signin.dart';
import 'package:recipeapp/presentation/auth/pages/signup_page.dart';
import 'package:recipeapp/presentation/home/pages/home_page.dart';
import 'package:recipeapp/service_locator.dart';

import '../../../core/configs/theme/app_colors.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

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
      controller: _emailCon,
      decoration: InputDecoration(hintText: "Email"),
    );
  }

  Widget _passwordTextField(BuildContext context) {
    return TextField(
      controller: _passwordCon,
      decoration: InputDecoration(hintText: "Password"),
    );
  }

  Widget _height(BuildContext context, double height) {
    return SizedBox(height: height);
  }

  Widget _singnInButton(BuildContext context) {
    return ReactiveButton(
        onPressed: () async {
          await sl<SigninUseCase>().Call(
              params: SigninModel(
                  email: _emailCon.text, password: _passwordCon.text));
        },
        onSuccess: () {
          DisplayMessage.successMessage(context, "Sign in successful");
          AppNavigation.pushAndRemove(context, HomePage());
        },
        onFailure: (error) {
          DisplayMessage.errorMessage(context, error);
        },
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
