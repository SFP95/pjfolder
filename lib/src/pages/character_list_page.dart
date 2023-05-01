import 'package:flutter/material.dart';

class CharacterListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Personajes'),
      ),
      body: ListView.builder(
        itemCount: 10, // Reemplaza este valor con la cantidad de personajes en la lista
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Personaje $index'), // Reemplaza este texto con el nombre del personaje en la lista
            onTap: () {
              Navigator.pushNamed(context, '/character_sheet');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/character_creation');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
