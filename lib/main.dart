import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(
      {MaterialAccentColor color = Colors.lightGreenAccent,
      int soundNumber = 1}) {
    return Expanded(
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          final player = AudioPlayer();

          final player1 = AudioCache();
          //await player.setSource(AssetSource('note1.wav'));
          player1.play(AssetSource('note$soundNumber.wav'));
        },
        child: Text(
          '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(color: Colors.greenAccent, soundNumber: 1),
            buildKey(color: Colors.pinkAccent, soundNumber: 2),
            buildKey(color: Colors.purpleAccent, soundNumber: 3),
            buildKey(color: Colors.limeAccent, soundNumber: 4),
            buildKey(color: Colors.orangeAccent, soundNumber: 5),
            buildKey(color: Colors.lightGreenAccent, soundNumber: 6),
            buildKey(color: Colors.redAccent, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
