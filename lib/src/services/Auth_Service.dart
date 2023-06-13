import 'dart:convert';

import 'package:RGS/src/dtos/login/loginRequest_dto.dart';
import 'package:RGS/src/dtos/login/registerRequest_dto.dart';
import 'package:RGS/src/dtos/login/registerResponse_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../dtos/characters/characterRequest_dto.dart';
import '../dtos/characters/characterResponset_dto.dart';
import '../dtos/login/loginResponse_dto.dart';
import '../utils/http_utils.dart';

class AuthService {

  Future<bool> isAuthenticated() async {
    String? token = getTokenFromLocalStorage();

    if (token != null) {
      bool isValidToken = await verifyToken(token);
      return isValidToken;
    } else {
      return false;
    }
  }

  String? getTokenFromLocalStorage() {
    // Lógica para obtener el token del almacenamiento local utilizando SharedPreferences
    // Reemplaza "token_key" con la clave correcta utilizada para almacenar el token

    SharedPreferences prefs;
    String? token;

    SharedPreferences.getInstance().then((instance) {
      prefs = instance;
      token = prefs.getString("token");
    });

    return token;
  }

  Future<bool> verifyToken(String token) async {
    // Lógica para verificar la validez del token en el servidor
    // Realiza una solicitud al servidor para verificar el token
    // Retorna true si el token es válido, de lo contrario, retorna false
    // Reemplaza esta lógica con tu implementación real

    // Simulación de solicitud al servidor con una demora de 2 segundos
    await Future.delayed(Duration(seconds: 2));

    // Aquí debes realizar la lógica real para verificar el token en el servidor
    // Puedes usar una librería HTTP (como http) para enviar una solicitud al servidor
    // y validar el token con la respuesta recibida

    // Ejemplo ficticio que siempre retorna true
    return true;
  }



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

  Future<RegisterResponse_dto?> register(String alias, String email, String password) async {
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

  Future<CharacterResponse_dto?> createCharacter(String name, String surname, int age, String story, String statistics, String race) async {
    int raceValue = mapRaceToValue(race);
    CharacterRequest_dto request = CharacterRequest_dto(
      name: name,
      surname: surname,
      age: age,
      story: story,
      race: raceValue.toString(), // Valor seleccionado de la raza como una cadena de texto
    );
    var body = jsonEncode(request);

    ApiClient apiClient = new ApiClient();
    var response = await apiClient.post("Character/CreateCharacter", headers: null, body: body);

    if (response.statusCode == 200) {
      CharacterResponse_dto? characterResponse = CharacterResponse_dto.fromJson(jsonDecode(response.body));
      print("CHARACTER RESPONSE");
      // print(characterResponse.token);
      return characterResponse;
    } else {
      return null;
    }
  }



  int mapRaceToValue(String race) {
    switch (race) {
      case 'Gnome':
        return 1;
      case 'Elf':
        return 2;
      case 'Mage':
        return 3;
      case 'Necromancer':
        return 4;
      case 'Dwarf':
        return 5;
      case 'Dragonborn':
        return 6;
      case 'Half-Orc':
        return 7;
      case 'Human':
        return 8;
      case 'Halfling':
        return 9;
      case 'Half-Elf':
        return 10;
      case 'Tifling':
        return 11;
      default:
        return 1; // Valor predeterminado en caso de que la raza no coincida con ninguna opción
    }
  }

}


