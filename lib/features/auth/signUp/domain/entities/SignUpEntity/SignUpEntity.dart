import '../../../data/models/SignUpResponse/User.dart';

class SignUpEntity {
  SignUpEntity({
      this.user, 
      this.token,});

  User? user;
  String? token;


}