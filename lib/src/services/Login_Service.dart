import 'dart:convert';

import 'package:RGS/src/dtos/login/loginRequest_dto.dart';

import '../dtos/login/loginResponse_dto.dart';
import '../utils/http_utils.dart';

class LoginService{

  Future<LoginResponse_dto?> login(String email, String password) async {

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
  }
}