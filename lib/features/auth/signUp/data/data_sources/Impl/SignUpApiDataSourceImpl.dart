import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/remote/ApiManger.dart';
import 'package:ecommerce_app/core/remote/EndPoints.dart';
import 'package:ecommerce_app/features/auth/signUp/data/data_sources/SignUpDataSource.dart';
import 'package:ecommerce_app/features/auth/signUp/data/models/SignUpResponse/SignUpResponse.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SignUpDataSource)
class SignUpApiDataSourceImpl extends SignUpDataSource {
  ApiManger apiManger;

  @factoryMethod
  SignUpApiDataSourceImpl(this.apiManger);

  @override
  Future<Either<SignUpResponse, String>> registerUser(
      {required String name,
      required String email,
      required String password,
      required String rePassword,
      required String phone}) async {
    try {
      var respone =
          await apiManger.postRequestRaw(path: EndPoints.signUp, body: {
        "name": name,
        "email": email,
        "password": password,
        "rePassword": rePassword,
        "phone": phone
      });
      SignUpResponse signUpResponse = SignUpResponse.fromJson(respone.data);
      if (signUpResponse.statusMsg != null) {
        //error
        return Right(signUpResponse.message!);
      } else {
        //success
        return Left(signUpResponse);
      }
    } catch (e) {
      return Right(e.toString());
    }
  }
}
