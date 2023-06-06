import 'dart:convert';

import 'package:RGS/src/dtos/login/loginRequest_dto.dart';

import '../dtos/login/loginResponse_dto.dart';
import '../utils/http_utils.dart';

class LoginService{
  /**
   * cambias los login-- a register---
   */

  Future<LoginResponse_dto?> login(String email, String password) async {
    LoginRequest_dto request = LoginRequest_dto(email, password);
    var body = jsonEncode(request);

    ApiClient apiClient = new ApiClient();
    var response = await apiClient.post("Auth/register", headers: null, body: body);

    if (response.statusCode == 200) {
      LoginResponse_dto? loginResponse = LoginResponse_dto.fromJson(jsonDecode(response.body));
      print("Resgister RESPONSE");
      print(loginResponse.token);
      return loginResponse;
    } else {
      return null;
    }
  }


  /*Future<LoginResponse_dto?> login(String email, String password) async {

    LoginRequest_dto request = LoginRequest_dto(email, password);

    var body = jsonEncode(request);

    ApiClient apiClient = new ApiClient();
    var a  = await apiClient.post("Auth/login",headers: null,body: body);
    if(a.statusCode == 200){
      print("HOLA");

      //TODO: VOLVER: falla aqui
      LoginResponse_dto str = jsonDecode(a.body);
      print("HOLA2");
    }else{
     return null;
    }
  }*/
}