import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CharacterEditPage extends StatefulWidget {

  @override
  _CharacterEditPageState createState() => _CharacterEditPageState();
}

class _CharacterEditPageState extends State<CharacterEditPage> {
  late String _selectedRace = 'Gnome';
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
      maxLines:3, // Ajusta el número de líneas para mostrar el texto completo
      scrollPadding: EdgeInsets.symmetric(vertical: 10), // Agrega un relleno interno
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

  Widget customHistori(
      String hintText, bool isNumeric, Function(String) onChanged) {
    return TextFormField(
      textAlign: TextAlign.center,
      keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
      maxLines: 1, // Ajusta el número de líneas para mostrar el texto completo
      scrollPadding: EdgeInsets.symmetric(vertical: 10), // Agrega un relleno interno
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
        title: Text('Edit Character card',style: TextStyle(fontSize: 25,color: Colors.grey[400])),
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
                 Divider(height: 30, color: Colors.grey[400]),
                 customTextField("Speed Value", true),
                 Divider(height: 30, color: Colors.grey[400]),
                 customTextField("Strength Value", true),
                 Divider(height: 30, color: Colors.grey[400]),
                 customTextField("Agility Value", true),
                 Divider(height: 30, color: Colors.grey[400]),
                 customTextField("Intelligence Value", true),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       "Race: ",
                       style:
                       TextStyle(color: Colors.grey[800], fontSize: 20),
                     ),
                     DropdownButton<String>(
                       dropdownColor: Colors.grey[800],
                       style:
                       TextStyle(color: Colors.grey[400], fontSize: 20),
                       borderRadius: BorderRadius.circular(30),
                       value: _selectedRace,
                       items: [
                         'Gnome',
                         'Elf',
                         'Mage',
                         'Necromancer',
                         'Dwarf',
                         'Dragonborn',
                         'Half-Orc',
                         'Human',
                         'Halfling',
                         'Half-Elf',
                         'Tifling',
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
                           _selectedRace = newValue ?? 'Gnome';
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
                Text(
                  "Stats",
                  style: TextStyle(fontSize: 30, color: Colors.grey[800]),
                ),
                Divider(height: 30, color: Colors.grey[400]),
                customTextField("Speed Value", true),
                Divider(height: 30, color: Colors.grey[400]),
                customTextField("Strength Value", true),
                Divider(height: 30, color: Colors.grey[400]),
                customTextField("Agility Value", true),
                Divider(height: 30, color: Colors.grey[400]),
                customTextField("Intelligence Value", true),

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
                  Text("Characteristics",style: TextStyle(fontSize: 30,color: Colors.grey[800])),
                  customTextField("Description of Hair, Skin, Facial and body features, Clothing, Personality, and whether or not you have pets.", false),
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
                    "History",
                    style: TextStyle(fontSize: 30, color: Colors.grey[800]),
                  ),
                  Divider(height: 30, color: Colors.grey[400]),
                  customHistori("...", true, (value) {
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
