import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipeapp/core/configs/theme/app_colors.dart';
import 'package:recipeapp/core/configs/theme/app_theme.dart';

import 'presentation/splash/bloc/splash_cubit.dart';
import 'presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //ทำพื้นหลังของ 
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.primary));
    return BlocProvider(
      create:(context) => SplashCubit()..appStarted(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.apptheme,
          home: SplashPage()),
    );
  }
}
