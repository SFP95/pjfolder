import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:RGS/src/stores/UserPreferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:crypto/crypto.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void register(String email, String password) {
    // Registration logic...

    // Generate the JWT token
    String token = generateToken();

    // Save the token to UserPreferences
    UserPreferences.saveToken(token);

    // Verify if the token has been saved correctly
    String? storedToken = UserPreferences.getToken() as String?;
    if (storedToken != null) {
      // The token has been saved successfully
      print('Token stored successfully: $storedToken');
      Navigator.popAndPushNamed(context, '/');
    } else {
      // Error storing the token
      print('Error storing the token');
    }
  }

  String generateToken() {
    final payload = {
      'userId': 123,
      'username': _usernameController.text,
      'exp': DateTime.now().add(Duration(days: 7)).millisecondsSinceEpoch ~/ 1000, // Expires in 7 days
    };

    // Encode the payload as a JSON string
    String encodedPayload = json.encode(payload);

    // Generate a signature using a secret key
    List<int> key = utf8.encode('your_secret_key');
    Hmac hmac = Hmac(sha256, key);
    Digest signature = hmac.convert(utf8.encode(encodedPayload));

    // Concatenate the encoded payload and signature with a dot
    String token = '${base64Url.encode(utf8.encode(encodedPayload))}.${base64Url.encode(signature.bytes)}';

    return token;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[800],
                    ),
                    controller: _usernameController,
                    decoration: InputDecoration(labelText: 'User Name'),
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[800],
                    ),
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[800],
                    ),
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade400),
                  ),
                  onPressed: () {
                    // Obtener los valores de los controladores
                    String username = _usernameController.text;
                    String email = _emailController.text;
                    String password = _passwordController.text;

                    // Llamar a la función de registro
                    register(email, password);
                  },
                  child: Text('Sign up',
                      style: TextStyle(color: Colors.grey[800], fontSize: 20)),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade400),
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/');
                  },
                  child: Text('Cancel',
                      style: TextStyle(color: Colors.grey[800], fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
