import 'package:flutter/material.dart';

class CharacterSheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ficha de Personaje'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Coloca aquí los widgets personalizados para mostrar la información del personaje
            // Por ejemplo: RaceDropdown(), StatContainer(), StoryContainer(), PhysicalCharacteristicsContainer()
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Implementar la lógica de edición aquí
            },
            child: Icon(Icons.edit),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Implementar la lógica de borrado aquí
            },
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
