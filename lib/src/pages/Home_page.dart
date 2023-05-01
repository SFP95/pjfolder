import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Home',style: TextStyle(fontSize: 20,color: Colors.grey[400])),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(90),
          mainAxisSpacing: 30.3,
          crossAxisSpacing: 30.3,
          crossAxisCount: 2,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80), // Borde redondeado
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/dice');
              },
              child: Text('Dados',style: TextStyle(fontSize: 60,color: Colors.grey[800])),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80), // Borde redondeado
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/characters_list');
              },
              child: Text('Lista de Personajes',style: TextStyle(fontSize: 60,color: Colors.grey[800])),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                //elevation: 0,
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80), // Borde redondeado
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/gallery');
              },
              child: Text('Galería',style: TextStyle(fontSize: 60,color: Colors.grey[800])),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80), // Borde redondeado
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Login',style: TextStyle(fontSize: 60,color: Colors.grey[800])),
            ),
          ],
        ),
      ),
    );
  }
}
