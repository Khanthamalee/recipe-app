import 'package:dartz/dartz.dart';
import 'package:recipeapp/data/auth/models/signin_model.dart';
import 'package:recipeapp/data/auth/models/signup_req_params.dart';
import 'package:recipeapp/data/auth/sources/auth_api_service.dart';
import 'package:recipeapp/domain/repositories/auth.dart';
import 'package:recipeapp/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl extends AuthRepository {
  // AuthAPIService authAPIService;
  // AuthRepositoryImpl({
  //   required this.authAPIService,
  // });
  @override
  Future<Either> signup(SignupReqParams params) async {
    //return authAPIService.signup(params);

    var data = await sl<AuthAPIService>().signup(params);
    return data.fold((error) {
      return Left(error);
    }, (data) async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('token', data['user']['token']);
      return Right(data);
    });
  }

  @override
  Future<Either> signin(SigninModel params) async {
    var data = await sl<AuthAPIService>().signin(params);
    data.fold((error) {
      return Left(error);
    }, (data) async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('token', data['user']['token']);
      return Right(data);
    });
    return sl<AuthAPIService>().signin(params);
  }
}
