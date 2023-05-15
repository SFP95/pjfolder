import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileUserLog extends StatefulWidget{
  @override
  State<ProfileUserLog> createState() => _ProfileUserLogState();
}

class _ProfileUserLogState extends State<ProfileUserLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded), // Icono a mostrar
          onPressed: () {
            Navigator.popAndPushNamed(context, '/home');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/perfil.png') ,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Divider(height: 30,color: Colors.grey[400]),
                  Text("NOMBRE DE USUARIO (alias)",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                  Divider(height: 30,color: Colors.grey[400]),
                  Text("correo@gmail.com",style: TextStyle(fontSize: 17,color: Colors.grey[800])),
                  Divider(height: 30,color: Colors.grey[400]),
                  Text("Birthday: 00 - 00 - 0000",style: TextStyle(fontSize: 17,color: Colors.grey[800])),
                  Divider(height: 30,color: Colors.grey[400]),

                ],
              ),
            ),
            Divider(height: 50,color: Colors.grey[800]),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade900),
                  shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: (){
                  Navigator.popAndPushNamed(context, '/login');
                },
                child: Text("Log Out",style: TextStyle(fontSize: 23,color: Colors.grey[400]))),
            Divider(height: 50,color: Colors.grey[800]),
          ],
        ),
      ),
    );
  }
}