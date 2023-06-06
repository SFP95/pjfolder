import 'dart:convert';

import 'package:RGS/src/dtos/login/registerRequest_dto.dart';
import 'package:RGS/src/dtos/login/registerResponse_dto.dart';

import '../utils/http_utils.dart';

class LoginService{
  /**
   * cambias los login-- a register---
   */

  Future<RegisterResponse_dto?> login(String email, String password) async {
    RegisterRequest_dto request = RegisterRequest_dto('', email, password);
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