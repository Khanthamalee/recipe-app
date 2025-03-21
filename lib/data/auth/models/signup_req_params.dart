class SignupReqParams {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  SignupReqParams(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    };
  }
}
