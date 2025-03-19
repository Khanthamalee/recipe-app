import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipeapp/common/helper/navigation/app_navigation.dart';
import 'package:recipeapp/core/configs/assets/app_images.dart';
import 'package:recipeapp/presentation/auth/pages/signin_page.dart';
import 'package:recipeapp/presentation/home/pages/home_page.dart';
import 'package:recipeapp/presentation/splash/bloc/splash_cubit.dart';
import 'package:recipeapp/presentation/splash/bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          AppNavigation.pushReplacemant(context, SigninPage());
        }

        if (state is Authenticated) {
          AppNavigation.pushReplacemant(context, HomePage());
        }
      },
      child: Center(
        child: Container(
          // height: 300,
          // width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imagepath(AppImages.bg)), fit: BoxFit.cover),
          ),
        ),
      ),
    ));
  }
}
