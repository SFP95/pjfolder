import 'package:RGS/src/models/character/Character.dart';
import 'package:RGS/src/utils/http_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CharacterListPage extends StatefulWidget {
  @override
  _CharacterListPageState createState() => _CharacterListPageState();
}

class _CharacterListPageState extends State<CharacterListPage> {
  List<Character> characters = [];

  @override
  void initState() {
    super.initState();
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    try {
      // URL del endpoint de la API para obtener la lista de personajes
      String endpoint = 'characters';

      // Realiza una solicitud GET al servidor para obtener la lista de personajes
      http.Response response = await ApiClient().get(endpoint);

      if (response.statusCode == 200) {
        // Decodifica la respuesta JSON y crea instancias de Character
        List<dynamic> data = jsonDecode(response.body);
        List<Character> fetchedCharacters = data.map((item) => Character.fromJson(item)).toList();

        setState(() {
          characters = fetchedCharacters;
        });
      } else {
        print('Error al obtener la lista de personajes. Código de estado: ${response.statusCode}');
      }
    } catch (e) {
      print('Error al obtener la lista de personajes: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[400],
          size: 30,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/home');
          },
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'List of Characters',
          style: TextStyle(fontSize: 30, color: Colors.grey[400]),
        ),
        backgroundColor: Colors.grey.shade800,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(30),
        itemCount: characters.length,
        itemBuilder: (BuildContext context, int index) {
          Character character = characters[index];

          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListTile(
              title: Text(
                character.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 30,
                ),
              ),
              subtitle: Text(
                character.race,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/character_sheet');
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[400]?.withOpacity(0.3),
        onPressed: () {
          Navigator.pushNamed(context, '/character_creation');
        },
        child: Icon(Icons.add,color: Colors.deepPurple[100],),
      ),
    );
  }
}