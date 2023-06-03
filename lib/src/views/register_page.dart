import 'package:RGS/src/stores/UserPreferences.dart';
import 'package:flutter/material.dart';

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

  void register(String email, String password) async {
    // Lógica de registro...


    // Registro exitoso y obtención del token
    String token = '...'; // Obtener el token de la respuesta del servicio

    // Almacenar el token en las preferencias del usuario
    await UserPreferences.saveToken(token);

    // Verificar si el token se ha guardado correctamente
    String? storedToken = await UserPreferences.getToken();
    if (storedToken != null) {
      // El token se ha guardado correctamente
      print('Token almacenado correctamente: $storedToken');
      Navigator.popAndPushNamed(context, '/');
    } else {
      // Error al guardar el token
      print('Error al almacenar el token');
    }
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
                    print(username+": "+ email+" - "+password);

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
