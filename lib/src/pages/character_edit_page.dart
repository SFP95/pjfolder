import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CharacterEditPage extends StatefulWidget {

  @override
  _CharacterEditPageState createState() => _CharacterEditPageState();
}

class _CharacterEditPageState extends State<CharacterEditPage> {
  late String _selectedRace = 'Gnomo';
  String _historiaValue = '';
  @override
  void dispose() {
    // Libera los recursos de los controladores aquí
    super.dispose();
  }


  Widget customTextField(String hintText, bool isNumeric) {
    return TextFormField(
      textAlign: TextAlign.center,
      keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        }
        if (isNumeric) {
          final number = num.tryParse(value);
          if (number == null) {
            return 'Please enter a valid number';
          }
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey.shade800,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }

  Widget customHistori(String hintText, bool isNumeric, Function(String) onChanged) {
    return TextFormField(
      textAlign: TextAlign.center,
      keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey.shade800,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 2,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }


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
        title: Text('Editar ficha Personaje',style: TextStyle(fontSize: 25,color: Colors.grey[400])),
        backgroundColor: Colors.grey.shade800,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(50)
              ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   width: 200,
                   height: 200,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage('assets/images/perfil.png'),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
                 Divider(height: 30,color: Colors.grey[400]),
                 customTextField("Introduce el nombre", false),
                 Divider(height: 30,color: Colors.grey[400]),
                 customTextField("Introduce el Apellido", false),
                 Divider(height: 30,color: Colors.grey[400]),
                 customTextField("Introduce la edad", true),
                 Divider(height: 30,color: Colors.grey[400]),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Raza: ",style: TextStyle(color: Colors.grey[800], fontSize: 20)),
                     DropdownButton<String>(
                       dropdownColor: Colors.grey[800],
                       style: TextStyle(color: Colors.grey[400], fontSize: 20),
                       borderRadius: BorderRadius.circular(30),
                       value: _selectedRace,
                       items: [
                         'Gnomo',
                         'Elfo',
                         'Mago',
                         'Nigromante',
                         'Enano',
                         'Dracónido',
                         'Semiorco',
                         'Humano',
                         'Mediano',
                         'Semielfo',
                         'Tiflin',
                       ].map<DropdownMenuItem<String>>(
                             (String value) {
                           return DropdownMenuItem<String>(
                             value: value,
                             child: Text(value),
                           );
                         },
                       ).toList(),
                       onChanged: (String? newValue) {
                         setState(() {
                           _selectedRace = newValue ?? 'gnomo';
                         });
                       },
                     ),
                   ],
                 ),
               ],
             ),
            ),
            Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(50)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Estadisticas",style: TextStyle(fontSize: 30,color: Colors.grey[800])),
                Divider(height: 30,color: Colors.grey[400]),
                customTextField("Valor de Velocidad", true),
                Divider(height: 30,color: Colors.grey[400]),
                customTextField("Valor de Fuerza", true),
                Divider(height: 30,color: Colors.grey[400]),
                customTextField("Valor de Agilidad", true),
                Divider(height: 30,color: Colors.grey[400]),
                customTextField("Valor de Inteligencia", true),

              ],
            ),
          ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Características",style: TextStyle(fontSize: 30,color: Colors.grey[800])),
                  Divider(height: 30,color: Colors.grey[400]),
                  customTextField("Descripción de Pelo", false),
                  Divider(height: 30,color: Colors.grey[400]),
                  customTextField("Descripción de Piel", false),
                  Divider(height: 30,color: Colors.grey[400]),
                  customTextField("Descripción de Rasgos", false),
                  Divider(height: 30,color: Colors.grey[400]),
                  customTextField("Descripción de Vestimenta", false),
                  Divider(height: 30,color: Colors.grey[400]),
                  customTextField("Descripción de Caracter", false),
                  Divider(height: 30,color: Colors.grey[400]),
                  customTextField("Descripción de Mascota", false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Historia",
                    style: TextStyle(fontSize: 30, color: Colors.grey[800]),
                  ),
                  Divider(height: 30, color: Colors.grey[400]),
                  customHistori("Contenido", true, (value) {
                    setState(() {
                      _historiaValue = value;
                    });
                  }),
                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey[700],
            onPressed: () {
              // Implementar la lógica de guardado aquí
              /**
               * // Implementar la lógica de guardado aquí
                  print('Valor de la historia: $_historiaValue');
               */
            },
            child: Icon(Icons.save,color: Colors.grey[400],),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.grey[700],
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.cancel,color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}
