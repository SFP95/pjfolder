import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int _selectedDice = 4;
  int _diceCount = 1;
  int _result = 0;

  void _rollDice() {
    int sum = 0;
    for (int i = 0; i < _diceCount; i++) {
      sum += Random().nextInt(_selectedDice) + 1;
    }
    setState(() {
      _result = sum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Dados',style: TextStyle(fontSize: 40,color: Colors.grey[400])),
          backgroundColor: Colors.grey.shade800,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.grey[800]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Nº de caras:",style: TextStyle(fontSize: 30,color: Colors.grey[400])),
                    Divider(height: 20),
                    DropdownButton<int>(
                      dropdownColor: Colors.grey[800],
                      style: TextStyle(color: Colors.grey[400],fontSize: 30),
                      borderRadius: BorderRadius.circular(30),
                      value: _selectedDice,
                      items: [4, 6, 8, 12, 20].map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                          value: value,
                          child: Text('$value caras'),
                        );
                      }).toList(),
                      onChanged: (int? newValue) {
                        setState(() {
                          _selectedDice = newValue ?? 4;
                        });
                      },
                    ),
                ],
                )
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.grey[800]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Nº de Dados:",style: TextStyle(fontSize: 30,color: Colors.grey[400])),
                    Divider(height: 25,color: Colors.grey[800]),
                    TextFormField(
                      style: TextStyle(
                         fontSize: 25,
                        color: Colors.grey[400]
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey[400]!),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                      ),
                      textAlign: TextAlign.center,
                      initialValue: '0',
                      keyboardType: TextInputType.number,
                      onChanged: (String newValue) {
                        setState(() {
                          _diceCount = int.tryParse(newValue) ?? 1;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.grey[800]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade800),
                      ),
                      onPressed: _rollDice,
                      child: Text('Tirar dados',style: TextStyle(fontSize: 30,color: Colors.grey[400])),
                    ),
                    Text('Resultado: $_result',style: TextStyle(fontSize: 30,color: Colors.grey[400])),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
