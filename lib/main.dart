import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Widget buildKey({required num, required color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith((states) => color),
        ),
        onPressed: () {
          playSound(num);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Make Your Own Music',
          ),
          backgroundColor: Colors.white38,
        ),
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(num: 1, color: Colors.red),
              buildKey(num: 2, color: Colors.orange),
              buildKey(num: 3, color: Colors.green),
              buildKey(num: 4, color: Colors.lightGreen),
              buildKey(num: 5, color: Colors.blue),
              buildKey(num: 6, color: Colors.deepPurple),
              buildKey(num: 7, color: Colors.deepPurpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
