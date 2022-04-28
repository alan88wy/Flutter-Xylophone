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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red, fixedSize: Size(150.0, 30.0),),
                onPressed: () {
                  playSound(1);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.orange, fixedSize: Size(150.0, 30.0),),
                onPressed: () {
                  playSound(2);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow, fixedSize: Size(150.0, 30.0),),
                onPressed: () {
                  playSound(3);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green, fixedSize: Size(150.0, 30.0),),
                onPressed: () {
                  playSound(4);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.teal, fixedSize: Size(150.0, 30.0),),
                onPressed: () {
                  playSound(5);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blue, fixedSize: Size(150.0, 30.0),),
                onPressed: () {
                  playSound(6);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple, fixedSize: Size(150.0, 30.0),),
                onPressed: () {
                  playSound(7);
                },
              ),

            ],
          ),
          // child: Container(),
        ),
      ),
    );
  }
}


