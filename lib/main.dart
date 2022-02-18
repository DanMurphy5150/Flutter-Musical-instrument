import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color fubar, int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: fubar),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(fubar: Color.fromARGB(100, 100, 100, 0), soundNumber: 1),
              buildKey(fubar: Colors.orange, soundNumber: 2),
              buildKey(fubar: Colors.yellow, soundNumber: 3),
              buildKey(fubar: Colors.green, soundNumber: 4),
              buildKey(fubar: Colors.blue.shade900, soundNumber: 5),
              buildKey(fubar: Colors.pink, soundNumber: 6),
              buildKey(fubar: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
