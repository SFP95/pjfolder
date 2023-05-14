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
  Widget customTextField(String hintText, bool isNumeric) {
    return TextFormField(
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
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
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
        title: Text('Creación de Personaje',style: TextStyle(fontSize: 25,color: Colors.grey[400])),
        backgroundColor: Colors.grey.shade800,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[400]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /*CircleAvatar(
                      maxRadius: 50,
                      backgroundColor: Colors.grey[800],
                      child: Image.asset("assets/images/perfil.png",color: Colors.grey[400],) //la ruta de ima imagen que debe se cogida de la galeria
                  ),*/
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      customTextField("Introduce el nombre", false),
                      customTextField("Introduce el Apellido", false),
                      customTextField("Introduce la edad", true),
                      customTextField("Introduce la raza", false),

                      //Text("NOMBRE",style: TextStyle(fontSize: 30,color: Colors.grey[800])),
                      //Text("APELLIDO",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                      //Text("RAZA",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                      //Text("EDAD",style: TextStyle(fontSize: 15,color: Colors.grey[800])),
                    ],
                  ),
                ],
              ),
            ),
          /*  Container(
              margin: EdgeInsets.fromLTRB(40,40,40,40),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[400],
              ),
              child: Column(
                children: [
                  Text("STATS",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                  Divider(color: Colors.grey[400],height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Velocidad :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Fuerza :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Agilidad :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Inteligencia :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.all(10),
                            color: Colors.white60,
                            child:
                            Column(
                              children: [
                                Text("0",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                                Text("0",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                                Text("0",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                                Text("0",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[400]
              ),
              child: Column(
                children: [
                  Text("Historia",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(60),
                    color: Colors.white60,
                    child: Text("CONTENIDO DE LA HISTORIA"),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40,40,40,40),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[400]
              ),
              child: Column(
                children: [
                  Text("Caracteristicas",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                  Divider(color: Colors.grey[400],height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pelo :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Piel :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Rascos :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Vestimenta :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Caracter :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Mascota :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.all(10),
                            color: Colors.white60,
                            child:
                            Column(
                              children: [
                                Text("--",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                                Text("--",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                                Text("--",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                                Text("--",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                                Text("--",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                                Text("--",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),*/
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
