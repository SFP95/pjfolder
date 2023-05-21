import 'package:RGS/src/dtos/login/loginRequest_dto.dart';

import '../dtos/login/loginResponse_dto.dart';
import '../utils/http_utils.dart';

class LoginService{

  Future<LoginResponse_dto?> login(String email, String password) async {
    LoginRequest_dto request = LoginRequest_dto(email, password);

    ApiClient apiClient = new ApiClient();
    var a  = await apiClient.post("/Auth/login",headers: null,body: request);
    if(a.statusCode == 200){
      LoginResponse_dto str = a.body as LoginResponse_dto;
    }else{
     return null;
    }
  }
}