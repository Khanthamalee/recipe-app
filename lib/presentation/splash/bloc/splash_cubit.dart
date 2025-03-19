import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipeapp/presentation/splash/bloc/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplayState());

  void appStarted() async {
    await Future.delayed(Duration(seconds: 2));
    emit(Authenticated());
  }
}
