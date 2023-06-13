import 'dart:convert';

import 'package:RGS/src/dtos/login/loginRequest_dto.dart';
import 'package:RGS/src/dtos/login/registerRequest_dto.dart';
import 'package:RGS/src/dtos/login/registerResponse_dto.dart';

import '../dtos/characters/characterRequest_dto.dart';
import '../dtos/characters/characterResponset_dto.dart';
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
    print(body);

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


 /* Future<CharacterResponse_dto?> character(String name,String surnane, int age,String story,String statistics,int race ) async{
    CharacterRequest_dto request = CharacterRequest_dto(name,surnane, age, story,statistics ,race);
    var response = await apiClient.post("Character/CreateCharacter", headers: null, body: body);
      if (response.statusCode == 200) {
        CharacterResponse_dto? characterResponse = CharacterResponse_dto.fromJson(jsonDecode(response.body));
        print("CHARACTER RESPONSE");
        //print(characterResponse.token);
        return characterResponse;
      } else {
        return null;
      }
  }*/
}