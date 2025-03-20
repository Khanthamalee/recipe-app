import 'package:dartz/dartz.dart';
import 'package:recipeapp/data/auth/models/signin_model.dart';
import 'package:recipeapp/data/auth/models/signup_req_params.dart';

abstract class AuthRepository {
  Future<Either> signup(SignupReqParams params);
  Future<Either> signin(SigninModel params);
}
