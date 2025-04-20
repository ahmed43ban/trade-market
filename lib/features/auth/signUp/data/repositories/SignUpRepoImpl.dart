import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/features/auth/signUp/data/data_sources/SignUpDataSource.dart';
import 'package:ecommerce_app/features/auth/signUp/domain/entities/SignUpEntity/SignUpEntity.dart';
import 'package:ecommerce_app/features/auth/signUp/domain/repositories/SignUpRepo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SignUpRepo)
class SignUpRepoImpl extends SignUpRepo {
  SignUpDataSource signUpDataSource;

  @factoryMethod
  SignUpRepoImpl(this.signUpDataSource);

  @override
  Future<Either<SignUpEntity, String>> registerUser({required String name,
    required String email,
    required String password,
    required String rePassword,
    required String phone}) async{
    var result =await signUpDataSource.registerUser(name: name,
        email: email,
        password: password,
        rePassword: rePassword,
        phone: phone);
    return result.fold((response){
      return Left(response.toSignUpEntity());
    }, (error){
      return Right(error);
    });

  }
  
}
