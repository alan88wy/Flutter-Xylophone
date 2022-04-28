import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  // const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  final AudioCache player = AudioCache();

  void playSound(int s) {
    player.play('note$s.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return
        Expanded(
          child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: color,
                      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
                    ),
                    onPressed: () {
                      playSound(soundNumber);
                    },
                ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
          // child: Container(),
        ),
      ),
    );
  }
}


