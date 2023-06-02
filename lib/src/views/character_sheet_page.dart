import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterSheetPage extends StatefulWidget {
  @override
  _CharacterSheetPageState createState() => _CharacterSheetPageState();
}

class _CharacterSheetPageState extends State<CharacterSheetPage> {
  int _speedValue = 0;
  int _forceValue = 0;
  int _agilityValue = 0;
  int _intelligenceValue = 0;

  void incrementValue(String stat) {
    setState(() {
      if (stat == 'speed') {
        _speedValue++;
      } else if (stat == 'force') {
        _forceValue++;
      } else if (stat == 'agility') {
        _agilityValue++;
      } else if (stat == 'intelligence') {
        _intelligenceValue++;
      }
    });
  }

  void decrementValue(String stat) {
    setState(() {
      if (stat == 'speed') {
        _speedValue--;
      } else if (stat == 'force') {
        _forceValue--;
      } else if (stat == 'agility') {
        _agilityValue--;
      } else if (stat == 'intelligence') {
        _intelligenceValue--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey[400]),
        centerTitle: true,
        elevation: 0,
        title: Text('Character File', style: TextStyle(fontSize: 30, color: Colors.grey[400])),
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
                color: Colors.grey[400],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    maxRadius: 80,
                    backgroundColor: Colors.grey[800],
                    child: Image.asset(
                      "assets/images/perfil.png",
                      color: Colors.grey[400],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("NAME", style: TextStyle(fontSize: 30, color: Colors.grey[800])),
                      Text("LAST NAME", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                      Text("AGE", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                      Text("RACE", style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[400],
              ),
              child: Column(
                children: [
                  Text("STATS", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                  Divider(color: Colors.grey[400], height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Speed :", style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                          Divider(height: 25),
                          Text("Force :", style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                          Divider(height: 25),
                          Text("Agility :", style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                          Divider(height: 25),
                          Text("Intelligence :", style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () => decrementValue('speed'),
                                      child: Icon(Icons.remove),
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.grey[400],
                                      mini: true,
                                    ),
                                    Text("   $_speedValue   ", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                                    FloatingActionButton(
                                      onPressed: () => incrementValue('speed'),
                                      child: Icon(Icons.add),
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.grey[400],
                                      mini: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () => decrementValue('force'),
                                      child: Icon(Icons.remove),
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.grey[400],
                                      mini: true,
                                    ),
                                    Text("   $_forceValue   ", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                                    FloatingActionButton(
                                      onPressed: () => incrementValue('force'),
                                      child: Icon(Icons.add),
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.grey[400],
                                      mini: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () => decrementValue('agility'),
                                      child: Icon(Icons.remove),
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.grey[400],
                                      mini: true,
                                    ),
                                    Text("   $_agilityValue   ", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                                    FloatingActionButton(
                                      onPressed: () => incrementValue('agility'),
                                      child: Icon(Icons.add),
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.grey[400],
                                      mini: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () => decrementValue('intelligence'),
                                      child: Icon(Icons.remove),
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.grey[400],
                                      mini: true,
                                    ),
                                    Text("   $_intelligenceValue   ", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                                    FloatingActionButton(
                                      onPressed: () => incrementValue('intelligence'),
                                      child: Icon(Icons.add),
                                      backgroundColor: Colors.grey[700],
                                      foregroundColor: Colors.grey[400],
                                      mini: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[400],
              ),
              child: Column(
                children: [
                  Text("Characteristics", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
                  Divider(color: Colors.grey[400], height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("......\n", style: TextStyle(fontSize: 20, color: Colors.grey[800])),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[400],
              ),
              child: Column(
                children: [
                  Text("History", style: TextStyle(fontSize: 25, color: Colors.grey[800])),
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
            child: Icon(Icons.edit, size: 30, color: Colors.grey[800],),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.grey[400],
            onPressed: () {
              // Implementar la lógica de borrado aquí
            },
            child: Icon(Icons.delete, size: 30, color: Colors.grey[800],),
          ),
        ],
      ),
    );
  }
}
