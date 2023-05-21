import '../../models/users/user.dart';

class LoginResponse_dto {

  late String token;
  late User user;

  LoginResponse_dto(this.token, this.user);

  LoginResponse_dto.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        user = json['user'];

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'user': user,
    };
  }
}