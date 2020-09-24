import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee Game',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          backgroundColor: Colors.cyan[900],
        ),
        body: DicePage(),
        backgroundColor: Colors.teal[700],
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  @override
  int Ldice = 1;
  int Rdice = 6;
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$Ldice.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$Rdice.png'),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        RaisedButton(
          onPressed: (){
            setState(() {
              Ldice = Random().nextInt(6)+1;
              Rdice = Random().nextInt(6)+1;
            });
          },
          child: Text(
            'Play',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          disabledColor: Colors.lightBlue[50],
        ),
      ],
    );
  }
}
