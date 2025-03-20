import 'package:dartz/dartz.dart';
import 'package:recipeapp/core/usecase/usecase.dart';
import 'package:recipeapp/data/auth/models/signin_model.dart';
import 'package:recipeapp/domain/repositories/auth.dart';
import 'package:recipeapp/service_locator.dart';

class SigninUseCase extends Usecase<Either, SigninModel> {
  @override
  Future<Either> Call({SigninModel? params}) async {
    return await sl<AuthRepository>().signin(params!);
  }
}
