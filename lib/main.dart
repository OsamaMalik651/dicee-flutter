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
  // const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void updateDice () => {
    setState((){
      leftDiceNumber = 1 + Random().nextInt(6);
      rightDiceNumber = 1 + Random().nextInt(6);
    })
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset("./images/dice$leftDiceNumber.png"),
              onPressed: () => {
                //Specifically specify that state is changing
                updateDice()
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("./images/dice$rightDiceNumber.png"),
              onPressed: () => {
                //Specifically specify that state is changing
                updateDice()
              },
            ),
          ),
        ],
      ),
    );
  }
}
