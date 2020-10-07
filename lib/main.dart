import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: DicePage(),
    ),
  );
}
// Our new project
class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  int Ldice = 1;//always declare before override
  int Rdice = 6;
  
  void _resetDice(){   //a privte function
    setState(() {
                Ldice = 1;
                Rdice = 6;
              });
  }
  void _rollDice(){   //a privte function
      setState(() {
            Ldice = Random().nextInt(6) + 1;
            Rdice = Random().nextInt(6) + 1;
          });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.games),
              onPressed: _resetDice,//for a cleaner code
            );
          },
        ),
        title: Center(
          child: Text(
            'Dicee Game',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/dice$Ldice.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('images/dice$Rdice.png'),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _rollDice
        icon: Icon(Icons.play_arrow),
        label: Text('Tap Here To Play',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black54,
      ),
    );
  }
}

