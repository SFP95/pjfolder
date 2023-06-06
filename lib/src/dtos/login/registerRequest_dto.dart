class RegisterRequest_dto {
  late String username;
  late String email;
  late String password;

  RegisterRequest_dto(this.username, this.email, this.password);

  RegisterRequest_dto.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        email = json['email'],
        password = json['password'];

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'password': password,
    };
  }
}
