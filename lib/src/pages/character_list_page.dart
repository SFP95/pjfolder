import 'package:flutter/material.dart';

class CharacterListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.grey[400]
        ),
        centerTitle: true,
        elevation: 0,
        title: Text('Lista de Personajes',style: TextStyle(fontSize: 30,color: Colors.grey[400])),
        backgroundColor: Colors.grey.shade800,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(30),
        itemCount: 10, // Reemplaza este valor con la cantidad de personajes en la lista
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.grey[400],
                borderRadius:BorderRadius.circular(30) 
            ),
            child: ListTile(
              title: Text('Personaje $index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 30,
                  )), // Reemplaza este texto con el nombre del personaje en la lista
              onTap: () {
                Navigator.pushNamed(context, '/character_sheet');
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[700],
        onPressed: () {
          Navigator.pushNamed(context, '/character_creation');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
