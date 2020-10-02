import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lefDiceNumber = 5;
    return Center(
      child: Row(
        children: [
          Expanded(
            //flex: 2,//2 fois sa taille
            child: FlatButton(
              onPressed: () {
                print('Button left got pressed');
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
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
