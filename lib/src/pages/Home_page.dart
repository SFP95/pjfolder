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
            IconButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade400),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80), // Borde redondeado
                  ),
                ),
              ),
                onPressed: (){
                  Navigator.pushNamed(context, '/dice');
                },
                icon: Image.asset('assets/images/dado.png',color:Colors.grey.shade400, height: 140, ),
            ),
            IconButton(
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
                icon: Image.asset('assets/images/nota.png',color:Colors.grey.shade400, height: 140)
            ),
            IconButton(
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
              icon: Image.asset('assets/images/galeria.png',color:Colors.grey.shade400, height: 140),
            ),
            IconButton(
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
              icon: Image.asset('assets/images/perfil.png',color:Colors.grey.shade400, height: 140),
            ),
          ],
        ),
      ),
    );
  }
}
