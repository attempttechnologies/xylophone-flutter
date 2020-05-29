import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int track) {
    final player = AudioCache();
    player.play('note$track.wav');
  }

  Expanded buildKey({int track, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(track);
        },
        color: color,
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
            mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(track: 1, color: Colors.red),
              buildKey(track: 2, color: Colors.blue),
              buildKey(track: 3, color: Colors.lightBlue),
              buildKey(track: 4, color: Colors.green),
              buildKey(track: 5, color: Colors.lightGreen),
              buildKey(track: 6, color: Colors.yellow),
              buildKey(track: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
