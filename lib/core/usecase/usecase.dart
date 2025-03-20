abstract class Usecase<Type, Params> {
  Future<Type> Call({Params params});
}
