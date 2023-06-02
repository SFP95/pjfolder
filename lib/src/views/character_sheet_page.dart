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
        title: Text('Character File',style: TextStyle(fontSize: 30,color: Colors.grey[400])),
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
                      Text("NAME",style: TextStyle(fontSize: 30,color: Colors.grey[800])),
                      Text("LAST NAME",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                      Text("AGE",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                      Text("RACE",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
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
                          Text("Speed :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Force :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Agility :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
                          Text("Intelligence :",style: TextStyle(fontSize: 20,color: Colors.grey[800])),
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
                  Text("Characteristics",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                  Divider(color: Colors.grey[400],height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("......\n",style: TextStyle(fontSize: 20,color: Colors.grey[800])),

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
                  Text("History",style: TextStyle(fontSize: 25,color: Colors.grey[800])),
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(60),
                    child: Text("....................................\n"),
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
