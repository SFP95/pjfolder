import 'package:flutter/material.dart';

class CharacterCreationPage extends StatefulWidget {
  @override
  _CharacterCreationPageState createState() => _CharacterCreationPageState();
}

class _CharacterCreationPageState extends State<CharacterCreationPage> {
  // Agrega aquí los controladores y variables para los campos de entrada

  @override
  void dispose() {
    // Libera los recursos de los controladores aquí
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creación de Personaje'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Coloca aquí los widgets personalizados para crear el personaje
            // Por ejemplo: RaceDropdown(), StatContainer(), StoryContainer(), PhysicalCharacteristicsContainer()
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Implementar la lógica de guardado aquí
            },
            child: Icon(Icons.save),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.cancel),
          ),
        ],
      ),
    );
  }
}
