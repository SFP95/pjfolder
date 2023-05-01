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
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<int>(
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
            TextFormField(
              initialValue: '1',
              keyboardType: TextInputType.number,
              onChanged: (String newValue) {
                setState(() {
                  _diceCount = int.tryParse(newValue) ?? 1;
                });
              },
            ),
            ElevatedButton(
              onPressed: _rollDice,
              child: Text('Tirar dados'),
            ),
            Text('Resultado: $_result'),
          ],
        ),
      ),
    );
  }
}
