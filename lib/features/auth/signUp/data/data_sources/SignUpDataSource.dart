import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/signUp/data/models/SignUpResponse/SignUpResponse.dart';

abstract class SignUpDataSource {
  Future<Either<SignUpResponse,String>>registerUser(
      {required String name,
      required String email,
      required String password,
      required String rePassword,
      required String phone});
}
