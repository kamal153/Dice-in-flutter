import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int ldn=5;
  int rdn=3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //crossAxisAlignment : CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                  setDice();
              },
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),

          Expanded(
            child: FlatButton(
              onPressed: (){
                  setDice();
              },
              child: Image.asset('images/dice$rdn.png'),
            ),
          ),

        ],
      ),
    );
  }

  void setDice()
  {
    setState(() {
      ldn = (Random().nextInt(5)) + 1;
      rdn = (Random().nextInt(5)) + 1;
    });
  }
}

