import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());


class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void PlaySoundNumber(int number){
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded buildKey({required Color dataColor, required int soundNumber}){
    return Expanded(
      child: GestureDetector(
        onTap: () {
          PlaySoundNumber(soundNumber);
        },
        child: Container(
          color: dataColor,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(dataColor: Colors.red, soundNumber: 1),
              buildKey(dataColor: Colors.orange, soundNumber: 2),
              buildKey(dataColor: Colors.yellow, soundNumber: 3),
              buildKey(dataColor: Colors.green, soundNumber: 4),
              buildKey(dataColor: Colors.blue, soundNumber: 5),
              buildKey(dataColor: Colors.purple, soundNumber: 6),
            ],
          ),
        )),
      ),
    );
  }
}
