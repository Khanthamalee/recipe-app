import 'package:get_it/get_it.dart';
import 'package:recipeapp/core/%E0%B8%B7network/dio_client.dart';
import 'package:recipeapp/data/auth/repositories/auth.dart';
import 'package:recipeapp/data/auth/sources/auth_api_service.dart';
import 'package:recipeapp/domain/repositories/auth.dart';
import 'package:recipeapp/domain/usecase/signin.dart';
import 'package:recipeapp/domain/usecase/signup.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  //service
  sl.registerSingleton<AuthAPIService>(AuthApiServiceImpl());

  //repository
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  //usecase
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}
