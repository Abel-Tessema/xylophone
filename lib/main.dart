import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () {
          playSound(noteNumber);
        },
        child: Container(),
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
            children: [
              buildKey(color: Colors.red, noteNumber: 1),
              buildKey(color: Colors.orange, noteNumber: 2),
              buildKey(color: Colors.yellow, noteNumber: 3),
              buildKey(color: Colors.green, noteNumber: 4),
              buildKey(color: Colors.blue, noteNumber: 5),
              buildKey(color: Colors.indigo, noteNumber: 6),
              buildKey(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
