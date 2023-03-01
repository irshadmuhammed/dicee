import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonNo = 1;
  int rightButtonNo = 1;

  void state() {
    setState(() {
      leftButtonNo = Random().nextInt(6) + 1;
      rightButtonNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice App',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red[500],
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    state();
                  },
                  child: Image.asset('images/dice$leftButtonNo.png'),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    state();
                  },
                  child: Image.asset('images/dice$rightButtonNo.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
