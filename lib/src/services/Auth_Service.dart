import 'dart:convert';

import 'package:RGS/src/dtos/login/loginRequest_dto.dart';
import 'package:RGS/src/dtos/login/registerRequest_dto.dart';
import 'package:RGS/src/dtos/login/registerResponse_dto.dart';

import '../dtos/login/loginResponse_dto.dart';
import '../utils/http_utils.dart';

class AuthService{


  Future<LoginResponse_dto?> login(String email, String password) async {
    LoginRequest_dto request = LoginRequest_dto(email, password);
    var body = jsonEncode(request);

    ApiClient apiClient = new ApiClient();
    var response = await apiClient.post("Auth/login", headers: null, body: body);

    if (response.statusCode == 200) {
      LoginResponse_dto? loginResponse = LoginResponse_dto.fromJson(jsonDecode(response.body));
      print("LOGIN RESPONSE");
      print(loginResponse.token);
      return loginResponse;
    } else {
      return null;
    }
  }

  Future<RegisterResponse_dto?> register(String alias,String email, String password) async {
    RegisterRequest_dto request = RegisterRequest_dto(alias, email, password);
    var body = jsonEncode(request);

    ApiClient apiClient = new ApiClient();
    var response = await apiClient.post("Auth/register", headers: null, body: body);

    if (response.statusCode == 200) {
      RegisterResponse_dto? registerResponse = RegisterResponse_dto.fromJson(jsonDecode(response.body));
      print("REGISTER RESPONSE");
      print(registerResponse.token);
      return registerResponse;
    } else {
      return null;
    }
  }
}