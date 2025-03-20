import 'package:dartz/dartz.dart';
import 'package:recipeapp/core/usecase/usecase.dart';
import 'package:recipeapp/data/auth/models/signup_req_params.dart';
import 'package:recipeapp/domain/repositories/auth.dart';
import 'package:recipeapp/service_locator.dart';

class SignupUseCase extends Usecase<Either, SignupReqParams> {
  // final AuthRepository authRepository;
  // SignupUseCase({required this.authRepository});
  @override
  Future<Either> Call({SignupReqParams? params}) async {
    // return await authRepository.signup(params!);
    return await sl<AuthRepository>().signup(params!);
  }
}
