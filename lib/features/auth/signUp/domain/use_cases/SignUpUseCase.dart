import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/signUp/domain/repositories/SignUpRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/SignUpEntity/SignUpEntity.dart';
@injectable
class SignUpUseCase{
  SignUpRepo signUpRepo;
  @factoryMethod
  SignUpUseCase(this.signUpRepo);
  Future<Either<SignUpEntity, String>> call({required String name ,
    required String email,
    required String phone,
    required String password,
    required String rePassword})=> signUpRepo.registerUser(name: name,
      email: email,
      password: password,
      rePassword: rePassword,
      phone: phone);
}