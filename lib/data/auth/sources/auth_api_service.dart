import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:recipeapp/core/%E0%B8%B7network/dio_client.dart';
import 'package:recipeapp/data/auth/models/signin_model.dart';
import 'package:recipeapp/data/auth/models/signup_req_params.dart';
import 'package:recipeapp/service_locator.dart';

import '../../../core/constants/api_url.dart';

abstract class AuthAPIService {
  Future<Either> signup(SignupReqParams params);
  Future<Either> signin(SigninModel params);
}

class AuthApiServiceImpl extends AuthAPIService {
  @override
  Future<Either> signup(SignupReqParams params) async {
    try {
      var response =
          await sl<DioClient>().post(ApiUrl.signup, data: params.toMap());
      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data["message"]);
    }
  }

  @override
  Future<Either> signin(SigninModel params) async {
    try {
      var response = await sl<DioClient>().post(ApiUrl.signin, data: params.toMap());
      return Right(response.data);
    } on DioException catch (e) {
      return Left(e.response!.data["message"]);
    }
  }
}
