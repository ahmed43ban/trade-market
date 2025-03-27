import 'package:dartz/dartz.dart';

import '../../data/models/SignUpResponse/SignUpResponse.dart';
import '../entities/SignUpEntity/SignUpEntity.dart';

abstract class SignUpRepo {
  Future<Either<SignUpEntity, String>>registerUser(
      {required String name,
      required String email,
      required String password,
      required String rePassword,
      required String phone});
}
