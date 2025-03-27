import 'package:ecommerce_app/features/auth/signUp/domain/entities/SignUpEntity/SignUpEntity.dart';

import 'User.dart';

class SignUpResponse {
  SignUpResponse({
      this.message, 
      this.statusMsg, 
      this.user, 
      this.token,});

  SignUpResponse.fromJson(dynamic json) {
    message = json['message'];
    statusMsg = json['statusMsg'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  String? message;
  String? statusMsg;
  User? user;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['statusMsg'] = statusMsg;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

  SignUpEntity toSignUpEntity(){
    return SignUpEntity(
      user: user,
      token: token
    );
  }
}