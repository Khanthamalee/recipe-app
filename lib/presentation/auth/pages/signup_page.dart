import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';
import 'package:recipeapp/common/helper/message/display_message.dart';
import 'package:recipeapp/data/auth/models/signup_req_params.dart';
import 'package:recipeapp/domain/usecase/signup.dart';
import 'package:recipeapp/presentation/auth/pages/signin_page.dart';
import 'package:recipeapp/service_locator.dart';

import '../../../common/helper/navigation/app_navigation.dart';
import '../../../core/configs/theme/app_colors.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

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
            _height(context, 20),
            _signUpText(context)
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
      controller: _firstNameCon,
      decoration: InputDecoration(hintText: "FirstName"),
    );
  }

  Widget _lastnameTextField(BuildContext context) {
    return TextField(
      controller: _lastNameCon,
      decoration: InputDecoration(hintText: "LastName"),
    );
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

  Widget _singnUpButton(BuildContext context) {
    return ReactiveButton(
        onPressed: () async {
          await sl<SignupUseCase>().Call(
              params: SignupReqParams(
                  firstName: _firstNameCon.text,
                  lastName: _lastNameCon.text,
                  email: _emailCon.text,
                  password: _passwordCon.text));
          // SignupUseCase().Call(
          //     params: SignupReqParams(
          //         firstName: _firstNameCon.text,
          //         lastName: _lastNameCon.text,
          //         email: _emailCon.text,
          //         password: _passwordCon.text));
        },
        onSuccess: () {
          DisplayMessage.successMessage(context, "Sign up successful");
          AppNavigation.pushAndRemove(context, SigninPage());
        },
        onFailure: (error) {
          DisplayMessage.errorMessage(context, error);
        },
        title: "Sign up",
        activeColor: AppColors.forthdary,
        height: 50);
  }

  Widget _signUpText(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(text: "You have any account?  "),
        TextSpan(
            text: "Sign in",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigation.push(context, SigninPage());
              },
            style: TextStyle(color: Colors.blue))
      ]),
    );
  }
}
