import '../../models/users/user.dart';
import 'dart:convert';

class RegisterResponse_dto {
  /**
   * añadir user name y
   * cambiar los del login--- a register---
   */
  late String token;
  late User user;

  LoginResponse_dto(this.token, this.user);

  factory LoginResponse_dto.fromJson(Map<String, dynamic> json) {
    return LoginResponse_dto(
      json['token'],
      User.fromJson(json['user']),
    );
  }



  /*LoginResponse_dto.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        user = json['user'];

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'user': user,
    };
  }*/
}