import '../../models/users/user.dart';

class LoginResponse_dto {

  late String token;
  late User user;

  LoginResponse_dto(this.token, this.user);
}