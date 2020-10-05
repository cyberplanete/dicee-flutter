import 'package:flutter/cupertino.dart';
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
        body: _DicePageState(),
      ),
    ),
  );
}

class _DicePageState extends StatefulWidget {
  @override
  __DicePageStateState createState() => __DicePageStateState();
}

class __DicePageStateState extends State<_DicePageState> {
  int lefDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeFaceDice() {
    setState(() {
      lefDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,//2 fois sa taille
            child: FlatButton(
              onPressed: () {
                print('Button left got pressed');
                changeFaceDice();
              },
              child: Image(
                image: AssetImage('images/dice$lefDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Button right got pressed');
                changeFaceDice();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
