import 'package:flutter/material.dart';

class CharacterSheetPage extends StatelessWidget {
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
        title: Text('Ficha de Personaje',style: TextStyle(fontSize: 30,color: Colors.grey[400])),
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
                  CircleAvatar(
                    maxRadius: 80,
                    backgroundColor: Colors.grey[800],
                    child: Image.asset("assets/images/perfil.png",color: Colors.grey[400],) //la ruta de ima imagen que debe se cogida de la galeria
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("NOMBRE",style: TextStyle(fontSize: 30,color: Colors.grey[800])),
                      Text("APELLIDO",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                      Text("EDAD",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                      Text("RAZA",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                    ],
                  ),
                ],
              ),
            ),
            Container(
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
            ),
            Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(10),
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
                    child: Text("CONTENIDO DE LA HISTORIA"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey[400],
            onPressed: () {
              Navigator.pushNamed(context, '/character_edit');
            },
            child: Icon(Icons.edit,size: 30,color: Colors.grey[800],),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.grey[400],
            onPressed: () {
              // Implementar la lógica de borrado aquí
            },
            child: Icon(Icons.delete,size: 30,color: Colors.grey[800],),
          ),
        ],
      ),
    );
  }
}
